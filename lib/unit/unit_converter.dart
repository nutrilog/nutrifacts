import 'unit.dart';

class UnitConverter {
  ///
  static double convert(Unit source, Unit target) {
    return source.conversionRate * target.conversionRate;
  }
}
