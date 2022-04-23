import 'package:drift/drift.dart';
import 'package:nutrifacts/nutrifacts.dart';

@UseRowClass(NutrimentsEntry)
class NutrimentsEntries extends Table {
  IntColumn get productId => integer().references(ProductEntries, #id)();
  TextColumn get energy => text().map(const QuantityConverter()).nullable()();
  TextColumn get protein => text().map(const QuantityConverter()).nullable()();
  TextColumn get carbohydrate =>
      text().map(const QuantityConverter()).nullable()();
  TextColumn get sugar => text().map(const QuantityConverter()).nullable()();
  TextColumn get fat => text().map(const QuantityConverter()).nullable()();
  TextColumn get fiber => text().map(const QuantityConverter()).nullable()();
  TextColumn get sodium => text().map(const QuantityConverter()).nullable()();
}

class NutrimentsEntry {
  final int productId;
  final Quantity? energy;
  final Quantity? protein;
  final Quantity? carbohydrate;
  final Quantity? sugar;
  final Quantity? fat;
  final Quantity? fiber;
  final Quantity? sodium;

  NutrimentsEntry({
    required this.productId,
    this.energy,
    this.protein,
    this.carbohydrate,
    this.sugar,
    this.fat,
    this.fiber,
    this.sodium,
  });
}

class Nutriments {
  final Quantity? energy;
  final Quantity? protein;
  final Quantity? carbohydrate;
  final Quantity? sugar;
  final Quantity? fat;
  final Quantity? fiber;
  final Quantity? sodium;

  Nutriments({
    this.energy,
    this.protein,
    this.carbohydrate,
    this.sugar,
    this.fat,
    this.fiber,
    this.sodium,
  });

  Nutriments.fromEntry(NutrimentsEntry entry)
      : this(
          energy: entry.energy,
          protein: entry.protein,
          carbohydrate: entry.carbohydrate,
          sugar: entry.sugar,
          fat: entry.fat,
          fiber: entry.fiber,
          sodium: entry.sodium,
        );
}
