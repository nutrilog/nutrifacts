import 'package:drift/drift.dart';
import 'package:nutrifacts/nutrifacts.dart';

@UseRowClass(ProductEntry)
class ProductEntries extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get barcode => text().nullable()();
  TextColumn get brandName => text().nullable()();
  TextColumn get genericName => text()();
  TextColumn get servingSize =>
      text().map(const QuantityConverter()).nullable()();
  IntColumn get sourceId => integer().references(SourceEntries, #id)();
}

class ProductEntry {
  final int id;
  final String? barcode;
  final String? brandName;
  final String genericName;
  final Quantity? servingSize;
  final int sourceId;

  ProductEntry({
    required this.id,
    this.barcode,
    this.brandName,
    required this.genericName,
    this.servingSize,
    required this.sourceId,
  });
}

class Product {
  final int? id;
  final String? barcode;
  final String? brandName;
  final String genericName;
  final Nutriments nutriments;
  final Quantity? servingSize;
  final Source source;

  Product({
    this.id,
    this.barcode,
    this.brandName,
    required this.genericName,
    required this.nutriments,
    this.servingSize,
    required this.source,
  });

  Product.fromEntry({
    required ProductEntry entry,
    required NutrimentsEntry nutriments,
    required SourceEntry source,
  }) : this(
          id: entry.id,
          barcode: entry.barcode,
          brandName: entry.brandName,
          genericName: entry.genericName,
          nutriments: Nutriments.fromEntry(nutriments),
          servingSize: entry.servingSize,
          source: Source.fromEntry(source),
        );
}
