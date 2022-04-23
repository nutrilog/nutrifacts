///
//  Generated code. Do not modify.
//  source: proto/product.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'product.pbenum.dart';

export 'product.pbenum.dart';

class SerializedSource extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerializedSource', createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'license')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'link')
    ..hasRequiredFields = false
  ;

  SerializedSource._() : super();
  factory SerializedSource({
    $core.String? name,
    $core.String? license,
    $core.String? link,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (license != null) {
      _result.license = license;
    }
    if (link != null) {
      _result.link = link;
    }
    return _result;
  }
  factory SerializedSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerializedSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerializedSource clone() => SerializedSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerializedSource copyWith(void Function(SerializedSource) updates) => super.copyWith((message) => updates(message as SerializedSource)) as SerializedSource; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerializedSource create() => SerializedSource._();
  SerializedSource createEmptyInstance() => create();
  static $pb.PbList<SerializedSource> createRepeated() => $pb.PbList<SerializedSource>();
  @$core.pragma('dart2js:noInline')
  static SerializedSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerializedSource>(create);
  static SerializedSource? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get license => $_getSZ(1);
  @$pb.TagNumber(3)
  set license($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasLicense() => $_has(1);
  @$pb.TagNumber(3)
  void clearLicense() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get link => $_getSZ(2);
  @$pb.TagNumber(4)
  set link($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasLink() => $_has(2);
  @$pb.TagNumber(4)
  void clearLink() => clearField(4);
}

class SerializedProduct_Nutriments extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerializedProduct.Nutriments', createEmptyInstance: create)
    ..aOM<SerializedProduct_Quantity>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'energy', subBuilder: SerializedProduct_Quantity.create)
    ..aOM<SerializedProduct_Quantity>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protein', subBuilder: SerializedProduct_Quantity.create)
    ..aOM<SerializedProduct_Quantity>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'carbohydrate', subBuilder: SerializedProduct_Quantity.create)
    ..aOM<SerializedProduct_Quantity>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sugar', subBuilder: SerializedProduct_Quantity.create)
    ..aOM<SerializedProduct_Quantity>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fat', subBuilder: SerializedProduct_Quantity.create)
    ..aOM<SerializedProduct_Quantity>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fiber', subBuilder: SerializedProduct_Quantity.create)
    ..aOM<SerializedProduct_Quantity>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sodium', subBuilder: SerializedProduct_Quantity.create)
    ..hasRequiredFields = false
  ;

  SerializedProduct_Nutriments._() : super();
  factory SerializedProduct_Nutriments({
    SerializedProduct_Quantity? energy,
    SerializedProduct_Quantity? protein,
    SerializedProduct_Quantity? carbohydrate,
    SerializedProduct_Quantity? sugar,
    SerializedProduct_Quantity? fat,
    SerializedProduct_Quantity? fiber,
    SerializedProduct_Quantity? sodium,
  }) {
    final _result = create();
    if (energy != null) {
      _result.energy = energy;
    }
    if (protein != null) {
      _result.protein = protein;
    }
    if (carbohydrate != null) {
      _result.carbohydrate = carbohydrate;
    }
    if (sugar != null) {
      _result.sugar = sugar;
    }
    if (fat != null) {
      _result.fat = fat;
    }
    if (fiber != null) {
      _result.fiber = fiber;
    }
    if (sodium != null) {
      _result.sodium = sodium;
    }
    return _result;
  }
  factory SerializedProduct_Nutriments.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerializedProduct_Nutriments.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerializedProduct_Nutriments clone() => SerializedProduct_Nutriments()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerializedProduct_Nutriments copyWith(void Function(SerializedProduct_Nutriments) updates) => super.copyWith((message) => updates(message as SerializedProduct_Nutriments)) as SerializedProduct_Nutriments; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerializedProduct_Nutriments create() => SerializedProduct_Nutriments._();
  SerializedProduct_Nutriments createEmptyInstance() => create();
  static $pb.PbList<SerializedProduct_Nutriments> createRepeated() => $pb.PbList<SerializedProduct_Nutriments>();
  @$core.pragma('dart2js:noInline')
  static SerializedProduct_Nutriments getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerializedProduct_Nutriments>(create);
  static SerializedProduct_Nutriments? _defaultInstance;

  @$pb.TagNumber(1)
  SerializedProduct_Quantity get energy => $_getN(0);
  @$pb.TagNumber(1)
  set energy(SerializedProduct_Quantity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnergy() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnergy() => clearField(1);
  @$pb.TagNumber(1)
  SerializedProduct_Quantity ensureEnergy() => $_ensure(0);

  @$pb.TagNumber(2)
  SerializedProduct_Quantity get protein => $_getN(1);
  @$pb.TagNumber(2)
  set protein(SerializedProduct_Quantity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProtein() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtein() => clearField(2);
  @$pb.TagNumber(2)
  SerializedProduct_Quantity ensureProtein() => $_ensure(1);

  @$pb.TagNumber(3)
  SerializedProduct_Quantity get carbohydrate => $_getN(2);
  @$pb.TagNumber(3)
  set carbohydrate(SerializedProduct_Quantity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCarbohydrate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCarbohydrate() => clearField(3);
  @$pb.TagNumber(3)
  SerializedProduct_Quantity ensureCarbohydrate() => $_ensure(2);

  @$pb.TagNumber(4)
  SerializedProduct_Quantity get sugar => $_getN(3);
  @$pb.TagNumber(4)
  set sugar(SerializedProduct_Quantity v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSugar() => $_has(3);
  @$pb.TagNumber(4)
  void clearSugar() => clearField(4);
  @$pb.TagNumber(4)
  SerializedProduct_Quantity ensureSugar() => $_ensure(3);

  @$pb.TagNumber(5)
  SerializedProduct_Quantity get fat => $_getN(4);
  @$pb.TagNumber(5)
  set fat(SerializedProduct_Quantity v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFat() => $_has(4);
  @$pb.TagNumber(5)
  void clearFat() => clearField(5);
  @$pb.TagNumber(5)
  SerializedProduct_Quantity ensureFat() => $_ensure(4);

  @$pb.TagNumber(6)
  SerializedProduct_Quantity get fiber => $_getN(5);
  @$pb.TagNumber(6)
  set fiber(SerializedProduct_Quantity v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasFiber() => $_has(5);
  @$pb.TagNumber(6)
  void clearFiber() => clearField(6);
  @$pb.TagNumber(6)
  SerializedProduct_Quantity ensureFiber() => $_ensure(5);

  @$pb.TagNumber(7)
  SerializedProduct_Quantity get sodium => $_getN(6);
  @$pb.TagNumber(7)
  set sodium(SerializedProduct_Quantity v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSodium() => $_has(6);
  @$pb.TagNumber(7)
  void clearSodium() => clearField(7);
  @$pb.TagNumber(7)
  SerializedProduct_Quantity ensureSodium() => $_ensure(6);
}

class SerializedProduct_Quantity_Unit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerializedProduct.Quantity.Unit', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..e<SerializedProduct_Quantity_Unit_UnitType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SerializedProduct_Quantity_Unit_UnitType.mass, valueOf: SerializedProduct_Quantity_Unit_UnitType.valueOf, enumValues: SerializedProduct_Quantity_Unit_UnitType.values)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversionRate', $pb.PbFieldType.OD, protoName: 'conversionRate')
    ..hasRequiredFields = false
  ;

  SerializedProduct_Quantity_Unit._() : super();
  factory SerializedProduct_Quantity_Unit({
    $core.String? name,
    $core.String? symbol,
    SerializedProduct_Quantity_Unit_UnitType? type,
    $core.double? conversionRate,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (type != null) {
      _result.type = type;
    }
    if (conversionRate != null) {
      _result.conversionRate = conversionRate;
    }
    return _result;
  }
  factory SerializedProduct_Quantity_Unit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerializedProduct_Quantity_Unit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerializedProduct_Quantity_Unit clone() => SerializedProduct_Quantity_Unit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerializedProduct_Quantity_Unit copyWith(void Function(SerializedProduct_Quantity_Unit) updates) => super.copyWith((message) => updates(message as SerializedProduct_Quantity_Unit)) as SerializedProduct_Quantity_Unit; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerializedProduct_Quantity_Unit create() => SerializedProduct_Quantity_Unit._();
  SerializedProduct_Quantity_Unit createEmptyInstance() => create();
  static $pb.PbList<SerializedProduct_Quantity_Unit> createRepeated() => $pb.PbList<SerializedProduct_Quantity_Unit>();
  @$core.pragma('dart2js:noInline')
  static SerializedProduct_Quantity_Unit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerializedProduct_Quantity_Unit>(create);
  static SerializedProduct_Quantity_Unit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  SerializedProduct_Quantity_Unit_UnitType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(SerializedProduct_Quantity_Unit_UnitType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get conversionRate => $_getN(3);
  @$pb.TagNumber(4)
  set conversionRate($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasConversionRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearConversionRate() => clearField(4);
}

class SerializedProduct_Quantity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerializedProduct.Quantity', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OD)
    ..aOM<SerializedProduct_Quantity_Unit>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unit', subBuilder: SerializedProduct_Quantity_Unit.create)
    ..hasRequiredFields = false
  ;

  SerializedProduct_Quantity._() : super();
  factory SerializedProduct_Quantity({
    $core.double? value,
    SerializedProduct_Quantity_Unit? unit,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (unit != null) {
      _result.unit = unit;
    }
    return _result;
  }
  factory SerializedProduct_Quantity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerializedProduct_Quantity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerializedProduct_Quantity clone() => SerializedProduct_Quantity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerializedProduct_Quantity copyWith(void Function(SerializedProduct_Quantity) updates) => super.copyWith((message) => updates(message as SerializedProduct_Quantity)) as SerializedProduct_Quantity; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerializedProduct_Quantity create() => SerializedProduct_Quantity._();
  SerializedProduct_Quantity createEmptyInstance() => create();
  static $pb.PbList<SerializedProduct_Quantity> createRepeated() => $pb.PbList<SerializedProduct_Quantity>();
  @$core.pragma('dart2js:noInline')
  static SerializedProduct_Quantity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerializedProduct_Quantity>(create);
  static SerializedProduct_Quantity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  SerializedProduct_Quantity_Unit get unit => $_getN(1);
  @$pb.TagNumber(2)
  set unit(SerializedProduct_Quantity_Unit v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnit() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnit() => clearField(2);
  @$pb.TagNumber(2)
  SerializedProduct_Quantity_Unit ensureUnit() => $_ensure(1);
}

class SerializedProduct extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerializedProduct', createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'barcode')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brandName', protoName: 'brandName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'genericName', protoName: 'genericName')
    ..aOM<SerializedProduct_Nutriments>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nutriments', subBuilder: SerializedProduct_Nutriments.create)
    ..aOM<SerializedProduct_Quantity>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'servingSize', protoName: 'servingSize', subBuilder: SerializedProduct_Quantity.create)
    ..hasRequiredFields = false
  ;

  SerializedProduct._() : super();
  factory SerializedProduct({
    $core.String? barcode,
    $core.String? brandName,
    $core.String? genericName,
    SerializedProduct_Nutriments? nutriments,
    SerializedProduct_Quantity? servingSize,
  }) {
    final _result = create();
    if (barcode != null) {
      _result.barcode = barcode;
    }
    if (brandName != null) {
      _result.brandName = brandName;
    }
    if (genericName != null) {
      _result.genericName = genericName;
    }
    if (nutriments != null) {
      _result.nutriments = nutriments;
    }
    if (servingSize != null) {
      _result.servingSize = servingSize;
    }
    return _result;
  }
  factory SerializedProduct.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerializedProduct.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerializedProduct clone() => SerializedProduct()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerializedProduct copyWith(void Function(SerializedProduct) updates) => super.copyWith((message) => updates(message as SerializedProduct)) as SerializedProduct; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerializedProduct create() => SerializedProduct._();
  SerializedProduct createEmptyInstance() => create();
  static $pb.PbList<SerializedProduct> createRepeated() => $pb.PbList<SerializedProduct>();
  @$core.pragma('dart2js:noInline')
  static SerializedProduct getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerializedProduct>(create);
  static SerializedProduct? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get barcode => $_getSZ(0);
  @$pb.TagNumber(2)
  set barcode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasBarcode() => $_has(0);
  @$pb.TagNumber(2)
  void clearBarcode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get brandName => $_getSZ(1);
  @$pb.TagNumber(3)
  set brandName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasBrandName() => $_has(1);
  @$pb.TagNumber(3)
  void clearBrandName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get genericName => $_getSZ(2);
  @$pb.TagNumber(4)
  set genericName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasGenericName() => $_has(2);
  @$pb.TagNumber(4)
  void clearGenericName() => clearField(4);

  @$pb.TagNumber(5)
  SerializedProduct_Nutriments get nutriments => $_getN(3);
  @$pb.TagNumber(5)
  set nutriments(SerializedProduct_Nutriments v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNutriments() => $_has(3);
  @$pb.TagNumber(5)
  void clearNutriments() => clearField(5);
  @$pb.TagNumber(5)
  SerializedProduct_Nutriments ensureNutriments() => $_ensure(3);

  @$pb.TagNumber(6)
  SerializedProduct_Quantity get servingSize => $_getN(4);
  @$pb.TagNumber(6)
  set servingSize(SerializedProduct_Quantity v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasServingSize() => $_has(4);
  @$pb.TagNumber(6)
  void clearServingSize() => clearField(6);
  @$pb.TagNumber(6)
  SerializedProduct_Quantity ensureServingSize() => $_ensure(4);
}

