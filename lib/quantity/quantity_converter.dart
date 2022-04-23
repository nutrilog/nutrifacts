import 'package:drift/drift.dart';
import 'package:nutrifacts/quantity/quantity.dart';
import 'package:nutrifacts/unit/units.dart';

class QuantityConverter extends TypeConverter<Quantity, String> {
  const QuantityConverter();

  @override
  Quantity? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }

    var parts = fromDb.split(' ');

    if (parts.length != 2) {
      return null;
    }

    var value = double.tryParse(parts[0]);

    if (value == null) {
      return null;
    }

    var unit = Units.fromSymbol(parts[1]);

    if (unit == null) {
      return null;
    }

    return Quantity(
      value: value,
      unit: unit,
    );
  }

  @override
  String? mapToSql(Quantity? value) {
    return value != null ? "${value.value} ${value.unit.symbol}" : null;
  }
}
