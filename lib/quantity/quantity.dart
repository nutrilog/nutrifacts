import 'package:nutrifacts/unit/unit.dart';

class Quantity {
  final double value;
  final Unit unit;

  Quantity({
    required this.value,
    required this.unit,
  });

  @override
  String toString() {
    return ("Quantity(value=$value,unit=${unit.name})");
  }
}
