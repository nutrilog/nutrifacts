import 'dart:async';
import 'dart:io';

import 'package:nutrifacts/export/product_tar_entry_converter.dart';
import 'package:nutrifacts/export/source_tar_entry_converter.dart';
import 'package:nutrifacts/nutrifacts.dart';
import 'package:nutrifacts/utils/stream_utils.dart';
import 'package:tar/tar.dart';

class NutrifactsExportUtils {
  static final ProductTarEntryConverter productTarEntryConverter =
      ProductTarEntryConverter();
  static final SourceTarEntryConverter sourceTarEntryConverter =
      SourceTarEntryConverter();
  static final EntrySourceConverter tarEntrySourceConverver =
      EntrySourceConverter();

  static Future<void> export(
    final File file,
    Source source,
    Stream<Product> products,
  ) {
    return Stream.value(sourceTarEntryConverter.convert(source))
        .concat(products.transform(productTarEntryConverter))
        .pipe(tarWritingSink(file.openWrite()));
  }

  static Stream<Product> import(
    final File file,
    FutureOr<Source> Function(Source) hydrateSource,
  ) async* {
    final StreamController<Entry> sourceController = StreamController();
    final StreamController<Entry> productController = StreamController();

    _import(file, sourceController, productController);

    Source source = await sourceController.stream.single
        .catchError(
            (error) => Future<Entry>.error(
                StateError((error as StateError).message.contains('many')
                    ? 'Nutrifacts file contains multiple source definitions.'
                    : 'Nutrifacts file contains no source definitions.'),
                error.stackTrace),
            test: (error) => error is StateError)
        .then((entry) => tarEntrySourceConverver.convert(entry))
        .then(hydrateSource);

    final converter = EntryProductConverter(source);

    yield* productController.stream.transform(converter);
  }

  static Future<void> _import(
    final File file,
    final Sink<Entry> sourceSink,
    final Sink<Entry> productSink,
  ) async {
    final reader = TarReader(file.openRead());

    while (await reader.moveNext()) {
      final entry = Entry(
        name: reader.current.header.name,
        content: await reader.current.contents
            .reduce((previous, element) => previous..addAll(element)),
      );

      if (entry.name == 'source') {
        sourceSink.add(entry);
      } else {
        productSink.add(entry);
      }
    }

    sourceSink.close();
    productSink.close();
  }
}

class Entry {
  final String name;
  final List<int> content;

  Entry({
    required this.name,
    required this.content,
  });
}
