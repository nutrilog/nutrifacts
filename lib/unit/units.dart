import 'unit.dart';
import 'unit_type.dart';

class Units {
  static const kilogram = Unit(
    name: 'kilogram',
    symbol: 'kg',
    type: UnitType.mass,
    conversionRate: 0.001,
  );

  static const gram = Unit(
    name: 'gram',
    symbol: 'g',
    type: UnitType.mass,
    conversionRate: 1,
  );

  static const milligram = Unit(
    name: 'milligram',
    symbol: 'mg',
    type: UnitType.mass,
    conversionRate: 1000,
  );

  static const microgram = Unit(
    name: 'microgram',
    symbol: 'μg',
    type: UnitType.mass,
    conversionRate: 1000000,
  );

  static const liter = Unit(
    name: 'liter',
    symbol: 'l',
    type: UnitType.volume,
    conversionRate: 1,
  );

  static const milliliter = Unit(
    name: 'milliliter',
    symbol: 'ml',
    type: UnitType.volume,
    conversionRate: 1000,
  );

  static const kilocalorie = Unit(
    name: 'kilocalorie',
    symbol: 'kcal',
    type: UnitType.energy,
    conversionRate: 4.184,
  );

  static const kilojoule = Unit(
    name: 'kilojoule',
    symbol: 'kj',
    type: UnitType.energy,
    conversionRate: 1,
  );

  static const symbolToUnit = {
    'kg': kilogram,
    'g': gram,
    'mg': milligram,
    'μg': microgram,
    'l': liter,
    'ml': milliliter,
    'kcal': kilocalorie,
    'kj': kilojoule,
  };

  static Unit? fromSymbol(String symbol) {
    return symbolToUnit[symbol.trim().toLowerCase()];
  }
}
