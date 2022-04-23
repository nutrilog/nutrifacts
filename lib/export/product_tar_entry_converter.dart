import 'dart:async';
import 'dart:convert';

import 'package:nutrifacts/nutrifacts.dart';
import 'package:nutrifacts/proto/product.pb.dart';
import 'package:tar/tar.dart';

class ProductTarEntryConverter extends Converter<Product, TarEntry> {
  @override
  TarEntry convert(Product input) {
    final nutriments = SerializedProduct_Nutriments(
      energy: _convertQuantity(input.nutriments.energy),
      protein: _convertQuantity(input.nutriments.protein),
      carbohydrate: _convertQuantity(input.nutriments.carbohydrate),
      sugar: _convertQuantity(input.nutriments.sugar),
      fat: _convertQuantity(input.nutriments.fat),
      fiber: _convertQuantity(input.nutriments.fiber),
      sodium: _convertQuantity(input.nutriments.sodium),
    );

    final serialized = SerializedProduct(
      barcode: input.barcode,
      brandName: input.brandName,
      genericName: input.genericName,
      nutriments: nutriments,
      servingSize: _convertQuantity(input.servingSize),
    );

    return TarEntry(
      TarHeader(
          name:
              "${input.barcode}${input.genericName}${DateTime.now().millisecondsSinceEpoch}"),
      Stream.value(serialized.writeToBuffer()),
    );
  }

  SerializedProduct_Quantity? _convertQuantity(final Quantity? quanity) {
    if (quanity == null) {
      return null;
    }

    final type = SerializedProduct_Quantity_Unit_UnitType.valueOf(
        quanity.unit.type.index);

    return SerializedProduct_Quantity(
      value: quanity.value,
      unit: SerializedProduct_Quantity_Unit(
        name: quanity.unit.name,
        symbol: quanity.unit.symbol,
        type: type,
        conversionRate: quanity.unit.conversionRate,
      ),
    );
  }

  @override
  Sink<Product> startChunkedConversion(Sink<TarEntry> sink) {
    return ChunkedConversionSink.withCallback((List<Product> products) {
      for (var product in products) {
        sink.add(convert(product));
      }
      sink.close();
    });
  }
}

class EntryProductConverter extends Converter<Entry, Product> {
  final Source source;

  EntryProductConverter(this.source);

  @override
  Product convert(Entry input) {
    final SerializedProduct product =
        SerializedProduct.fromBuffer(input.content);

    final nutriments = Nutriments(
      energy: _convertQuantity(product.nutriments.energy),
      protein: _convertQuantity(product.nutriments.protein),
      carbohydrate: _convertQuantity(product.nutriments.carbohydrate),
      sugar: _convertQuantity(product.nutriments.sugar),
      fat: _convertQuantity(product.nutriments.fat),
      fiber: _convertQuantity(product.nutriments.fiber),
      sodium: _convertQuantity(product.nutriments.sodium),
    );

    return Product(
      barcode: product.barcode,
      brandName: product.brandName,
      genericName: product.genericName,
      nutriments: nutriments,
      servingSize: _convertQuantity(product.servingSize)!,
      source: source,
    );
  }

  Quantity? _convertQuantity(final SerializedProduct_Quantity? quanity) {
    if (quanity == null) {
      return null;
    }

    final type = UnitType.values[quanity.unit.type.value];

    return Quantity(
      value: quanity.value,
      unit: Unit(
        name: quanity.unit.name,
        symbol: quanity.unit.symbol,
        type: type,
        conversionRate: quanity.unit.conversionRate,
      ),
    );
  }

  @override
  Sink<Entry> startChunkedConversion(Sink<Product> sink) {
    return ChunkedConversionSink.withCallback((List<Entry> entries) {
      for (var entry in entries) {
        sink.add(convert(entry));
      }
      sink.close();
    });
  }
}
