import 'dart:convert';

import 'package:nutrifacts/nutrifacts.dart';
import 'package:nutrifacts/proto/product.pbserver.dart';
import 'package:tar/tar.dart';

class SourceTarEntryConverter extends Converter<Source, TarEntry> {
  @override
  TarEntry convert(Source input) {
    return TarEntry(
      TarHeader(name: 'source'),
      Stream.value(SerializedSource(
        name: input.name,
        license: input.license,
        link: input.link,
      ).writeToBuffer()),
    );
  }
}

class EntrySourceConverter extends Converter<Entry, Source> {
  @override
  Source convert(Entry input) {
    final source = SerializedSource.fromBuffer(input.content);

    return Source(
        name: source.name, license: source.license, link: source.link);
  }
}
