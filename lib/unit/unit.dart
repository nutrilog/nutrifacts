import 'unit_type.dart';

class Unit {
  final String name;
  final String symbol;
  final UnitType type;
  final double conversionRate;

  const Unit({
    required this.name,
    required this.symbol,
    required this.type,
    required this.conversionRate,
  });
}
