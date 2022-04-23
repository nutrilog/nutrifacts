///
//  Generated code. Do not modify.
//  source: proto/product.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SerializedProduct_Quantity_Unit_UnitType extends $pb.ProtobufEnum {
  static const SerializedProduct_Quantity_Unit_UnitType mass = SerializedProduct_Quantity_Unit_UnitType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'mass');
  static const SerializedProduct_Quantity_Unit_UnitType volume = SerializedProduct_Quantity_Unit_UnitType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'volume');
  static const SerializedProduct_Quantity_Unit_UnitType energy = SerializedProduct_Quantity_Unit_UnitType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'energy');

  static const $core.List<SerializedProduct_Quantity_Unit_UnitType> values = <SerializedProduct_Quantity_Unit_UnitType> [
    mass,
    volume,
    energy,
  ];

  static final $core.Map<$core.int, SerializedProduct_Quantity_Unit_UnitType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SerializedProduct_Quantity_Unit_UnitType? valueOf($core.int value) => _byValue[value];

  const SerializedProduct_Quantity_Unit_UnitType._($core.int v, $core.String n) : super(v, n);
}

