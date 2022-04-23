// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class SourceEntriesCompanion extends UpdateCompanion<SourceEntry> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> license;
  final Value<String> link;
  const SourceEntriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.license = const Value.absent(),
    this.link = const Value.absent(),
  });
  SourceEntriesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String license,
    required String link,
  })  : name = Value(name),
        license = Value(license),
        link = Value(link);
  static Insertable<SourceEntry> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? license,
    Expression<String>? link,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (license != null) 'license': license,
      if (link != null) 'link': link,
    });
  }

  SourceEntriesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? license,
      Value<String>? link}) {
    return SourceEntriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      license: license ?? this.license,
      link: link ?? this.link,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (license.present) {
      map['license'] = Variable<String>(license.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SourceEntriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('license: $license, ')
          ..write('link: $link')
          ..write(')'))
        .toString();
  }
}

class $SourceEntriesTable extends SourceEntries
    with TableInfo<$SourceEntriesTable, SourceEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SourceEntriesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _licenseMeta = const VerificationMeta('license');
  @override
  late final GeneratedColumn<String?> license = GeneratedColumn<String?>(
      'license', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String?> link = GeneratedColumn<String?>(
      'link', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, license, link];
  @override
  String get aliasedName => _alias ?? 'source_entries';
  @override
  String get actualTableName => 'source_entries';
  @override
  VerificationContext validateIntegrity(Insertable<SourceEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('license')) {
      context.handle(_licenseMeta,
          license.isAcceptableOrUnknown(data['license']!, _licenseMeta));
    } else if (isInserting) {
      context.missing(_licenseMeta);
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    } else if (isInserting) {
      context.missing(_linkMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SourceEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SourceEntry(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      license: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}license'])!,
      link: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}link'])!,
    );
  }

  @override
  $SourceEntriesTable createAlias(String alias) {
    return $SourceEntriesTable(attachedDatabase, alias);
  }
}

class ProductEntriesCompanion extends UpdateCompanion<ProductEntry> {
  final Value<int> id;
  final Value<String?> barcode;
  final Value<String?> brandName;
  final Value<String> genericName;
  final Value<Quantity?> servingSize;
  final Value<int> sourceId;
  const ProductEntriesCompanion({
    this.id = const Value.absent(),
    this.barcode = const Value.absent(),
    this.brandName = const Value.absent(),
    this.genericName = const Value.absent(),
    this.servingSize = const Value.absent(),
    this.sourceId = const Value.absent(),
  });
  ProductEntriesCompanion.insert({
    this.id = const Value.absent(),
    this.barcode = const Value.absent(),
    this.brandName = const Value.absent(),
    required String genericName,
    this.servingSize = const Value.absent(),
    required int sourceId,
  })  : genericName = Value(genericName),
        sourceId = Value(sourceId);
  static Insertable<ProductEntry> custom({
    Expression<int>? id,
    Expression<String?>? barcode,
    Expression<String?>? brandName,
    Expression<String>? genericName,
    Expression<Quantity?>? servingSize,
    Expression<int>? sourceId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (barcode != null) 'barcode': barcode,
      if (brandName != null) 'brand_name': brandName,
      if (genericName != null) 'generic_name': genericName,
      if (servingSize != null) 'serving_size': servingSize,
      if (sourceId != null) 'source_id': sourceId,
    });
  }

  ProductEntriesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? barcode,
      Value<String?>? brandName,
      Value<String>? genericName,
      Value<Quantity?>? servingSize,
      Value<int>? sourceId}) {
    return ProductEntriesCompanion(
      id: id ?? this.id,
      barcode: barcode ?? this.barcode,
      brandName: brandName ?? this.brandName,
      genericName: genericName ?? this.genericName,
      servingSize: servingSize ?? this.servingSize,
      sourceId: sourceId ?? this.sourceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<String?>(barcode.value);
    }
    if (brandName.present) {
      map['brand_name'] = Variable<String?>(brandName.value);
    }
    if (genericName.present) {
      map['generic_name'] = Variable<String>(genericName.value);
    }
    if (servingSize.present) {
      final converter = $ProductEntriesTable.$converter0;
      map['serving_size'] =
          Variable<String?>(converter.mapToSql(servingSize.value));
    }
    if (sourceId.present) {
      map['source_id'] = Variable<int>(sourceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductEntriesCompanion(')
          ..write('id: $id, ')
          ..write('barcode: $barcode, ')
          ..write('brandName: $brandName, ')
          ..write('genericName: $genericName, ')
          ..write('servingSize: $servingSize, ')
          ..write('sourceId: $sourceId')
          ..write(')'))
        .toString();
  }
}

class $ProductEntriesTable extends ProductEntries
    with TableInfo<$ProductEntriesTable, ProductEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductEntriesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _barcodeMeta = const VerificationMeta('barcode');
  @override
  late final GeneratedColumn<String?> barcode = GeneratedColumn<String?>(
      'barcode', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _brandNameMeta = const VerificationMeta('brandName');
  @override
  late final GeneratedColumn<String?> brandName = GeneratedColumn<String?>(
      'brand_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _genericNameMeta =
      const VerificationMeta('genericName');
  @override
  late final GeneratedColumn<String?> genericName = GeneratedColumn<String?>(
      'generic_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _servingSizeMeta =
      const VerificationMeta('servingSize');
  @override
  late final GeneratedColumnWithTypeConverter<Quantity, String?> servingSize =
      GeneratedColumn<String?>('serving_size', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<Quantity>($ProductEntriesTable.$converter0);
  final VerificationMeta _sourceIdMeta = const VerificationMeta('sourceId');
  @override
  late final GeneratedColumn<int?> sourceId = GeneratedColumn<int?>(
      'source_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES source_entries (id)');
  @override
  List<GeneratedColumn> get $columns =>
      [id, barcode, brandName, genericName, servingSize, sourceId];
  @override
  String get aliasedName => _alias ?? 'product_entries';
  @override
  String get actualTableName => 'product_entries';
  @override
  VerificationContext validateIntegrity(Insertable<ProductEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('barcode')) {
      context.handle(_barcodeMeta,
          barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta));
    }
    if (data.containsKey('brand_name')) {
      context.handle(_brandNameMeta,
          brandName.isAcceptableOrUnknown(data['brand_name']!, _brandNameMeta));
    }
    if (data.containsKey('generic_name')) {
      context.handle(
          _genericNameMeta,
          genericName.isAcceptableOrUnknown(
              data['generic_name']!, _genericNameMeta));
    } else if (isInserting) {
      context.missing(_genericNameMeta);
    }
    context.handle(_servingSizeMeta, const VerificationResult.success());
    if (data.containsKey('source_id')) {
      context.handle(_sourceIdMeta,
          sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta));
    } else if (isInserting) {
      context.missing(_sourceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductEntry(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      barcode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}barcode']),
      brandName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}brand_name']),
      genericName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}generic_name'])!,
      servingSize: $ProductEntriesTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}serving_size'])),
      sourceId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}source_id'])!,
    );
  }

  @override
  $ProductEntriesTable createAlias(String alias) {
    return $ProductEntriesTable(attachedDatabase, alias);
  }

  static TypeConverter<Quantity, String> $converter0 =
      const QuantityConverter();
}

class NutrimentsEntriesCompanion extends UpdateCompanion<NutrimentsEntry> {
  final Value<int> productId;
  final Value<Quantity?> energy;
  final Value<Quantity?> protein;
  final Value<Quantity?> carbohydrate;
  final Value<Quantity?> sugar;
  final Value<Quantity?> fat;
  final Value<Quantity?> fiber;
  final Value<Quantity?> sodium;
  const NutrimentsEntriesCompanion({
    this.productId = const Value.absent(),
    this.energy = const Value.absent(),
    this.protein = const Value.absent(),
    this.carbohydrate = const Value.absent(),
    this.sugar = const Value.absent(),
    this.fat = const Value.absent(),
    this.fiber = const Value.absent(),
    this.sodium = const Value.absent(),
  });
  NutrimentsEntriesCompanion.insert({
    required int productId,
    this.energy = const Value.absent(),
    this.protein = const Value.absent(),
    this.carbohydrate = const Value.absent(),
    this.sugar = const Value.absent(),
    this.fat = const Value.absent(),
    this.fiber = const Value.absent(),
    this.sodium = const Value.absent(),
  }) : productId = Value(productId);
  static Insertable<NutrimentsEntry> custom({
    Expression<int>? productId,
    Expression<Quantity?>? energy,
    Expression<Quantity?>? protein,
    Expression<Quantity?>? carbohydrate,
    Expression<Quantity?>? sugar,
    Expression<Quantity?>? fat,
    Expression<Quantity?>? fiber,
    Expression<Quantity?>? sodium,
  }) {
    return RawValuesInsertable({
      if (productId != null) 'product_id': productId,
      if (energy != null) 'energy': energy,
      if (protein != null) 'protein': protein,
      if (carbohydrate != null) 'carbohydrate': carbohydrate,
      if (sugar != null) 'sugar': sugar,
      if (fat != null) 'fat': fat,
      if (fiber != null) 'fiber': fiber,
      if (sodium != null) 'sodium': sodium,
    });
  }

  NutrimentsEntriesCompanion copyWith(
      {Value<int>? productId,
      Value<Quantity?>? energy,
      Value<Quantity?>? protein,
      Value<Quantity?>? carbohydrate,
      Value<Quantity?>? sugar,
      Value<Quantity?>? fat,
      Value<Quantity?>? fiber,
      Value<Quantity?>? sodium}) {
    return NutrimentsEntriesCompanion(
      productId: productId ?? this.productId,
      energy: energy ?? this.energy,
      protein: protein ?? this.protein,
      carbohydrate: carbohydrate ?? this.carbohydrate,
      sugar: sugar ?? this.sugar,
      fat: fat ?? this.fat,
      fiber: fiber ?? this.fiber,
      sodium: sodium ?? this.sodium,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (energy.present) {
      final converter = $NutrimentsEntriesTable.$converter0;
      map['energy'] = Variable<String?>(converter.mapToSql(energy.value));
    }
    if (protein.present) {
      final converter = $NutrimentsEntriesTable.$converter1;
      map['protein'] = Variable<String?>(converter.mapToSql(protein.value));
    }
    if (carbohydrate.present) {
      final converter = $NutrimentsEntriesTable.$converter2;
      map['carbohydrate'] =
          Variable<String?>(converter.mapToSql(carbohydrate.value));
    }
    if (sugar.present) {
      final converter = $NutrimentsEntriesTable.$converter3;
      map['sugar'] = Variable<String?>(converter.mapToSql(sugar.value));
    }
    if (fat.present) {
      final converter = $NutrimentsEntriesTable.$converter4;
      map['fat'] = Variable<String?>(converter.mapToSql(fat.value));
    }
    if (fiber.present) {
      final converter = $NutrimentsEntriesTable.$converter5;
      map['fiber'] = Variable<String?>(converter.mapToSql(fiber.value));
    }
    if (sodium.present) {
      final converter = $NutrimentsEntriesTable.$converter6;
      map['sodium'] = Variable<String?>(converter.mapToSql(sodium.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NutrimentsEntriesCompanion(')
          ..write('productId: $productId, ')
          ..write('energy: $energy, ')
          ..write('protein: $protein, ')
          ..write('carbohydrate: $carbohydrate, ')
          ..write('sugar: $sugar, ')
          ..write('fat: $fat, ')
          ..write('fiber: $fiber, ')
          ..write('sodium: $sodium')
          ..write(')'))
        .toString();
  }
}

class $NutrimentsEntriesTable extends NutrimentsEntries
    with TableInfo<$NutrimentsEntriesTable, NutrimentsEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NutrimentsEntriesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _productIdMeta = const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int?> productId = GeneratedColumn<int?>(
      'product_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES product_entries (id)');
  final VerificationMeta _energyMeta = const VerificationMeta('energy');
  @override
  late final GeneratedColumnWithTypeConverter<Quantity, String?> energy =
      GeneratedColumn<String?>('energy', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<Quantity>($NutrimentsEntriesTable.$converter0);
  final VerificationMeta _proteinMeta = const VerificationMeta('protein');
  @override
  late final GeneratedColumnWithTypeConverter<Quantity, String?> protein =
      GeneratedColumn<String?>('protein', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<Quantity>($NutrimentsEntriesTable.$converter1);
  final VerificationMeta _carbohydrateMeta =
      const VerificationMeta('carbohydrate');
  @override
  late final GeneratedColumnWithTypeConverter<Quantity, String?> carbohydrate =
      GeneratedColumn<String?>('carbohydrate', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<Quantity>($NutrimentsEntriesTable.$converter2);
  final VerificationMeta _sugarMeta = const VerificationMeta('sugar');
  @override
  late final GeneratedColumnWithTypeConverter<Quantity, String?> sugar =
      GeneratedColumn<String?>('sugar', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<Quantity>($NutrimentsEntriesTable.$converter3);
  final VerificationMeta _fatMeta = const VerificationMeta('fat');
  @override
  late final GeneratedColumnWithTypeConverter<Quantity, String?> fat =
      GeneratedColumn<String?>('fat', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<Quantity>($NutrimentsEntriesTable.$converter4);
  final VerificationMeta _fiberMeta = const VerificationMeta('fiber');
  @override
  late final GeneratedColumnWithTypeConverter<Quantity, String?> fiber =
      GeneratedColumn<String?>('fiber', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<Quantity>($NutrimentsEntriesTable.$converter5);
  final VerificationMeta _sodiumMeta = const VerificationMeta('sodium');
  @override
  late final GeneratedColumnWithTypeConverter<Quantity, String?> sodium =
      GeneratedColumn<String?>('sodium', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<Quantity>($NutrimentsEntriesTable.$converter6);
  @override
  List<GeneratedColumn> get $columns =>
      [productId, energy, protein, carbohydrate, sugar, fat, fiber, sodium];
  @override
  String get aliasedName => _alias ?? 'nutriments_entries';
  @override
  String get actualTableName => 'nutriments_entries';
  @override
  VerificationContext validateIntegrity(Insertable<NutrimentsEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    context.handle(_energyMeta, const VerificationResult.success());
    context.handle(_proteinMeta, const VerificationResult.success());
    context.handle(_carbohydrateMeta, const VerificationResult.success());
    context.handle(_sugarMeta, const VerificationResult.success());
    context.handle(_fatMeta, const VerificationResult.success());
    context.handle(_fiberMeta, const VerificationResult.success());
    context.handle(_sodiumMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  NutrimentsEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NutrimentsEntry(
      productId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}product_id'])!,
      energy: $NutrimentsEntriesTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}energy'])),
      protein: $NutrimentsEntriesTable.$converter1.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}protein'])),
      carbohydrate: $NutrimentsEntriesTable.$converter2.mapToDart(
          const StringType()
              .mapFromDatabaseResponse(data['${effectivePrefix}carbohydrate'])),
      sugar: $NutrimentsEntriesTable.$converter3.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sugar'])),
      fat: $NutrimentsEntriesTable.$converter4.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fat'])),
      fiber: $NutrimentsEntriesTable.$converter5.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fiber'])),
      sodium: $NutrimentsEntriesTable.$converter6.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sodium'])),
    );
  }

  @override
  $NutrimentsEntriesTable createAlias(String alias) {
    return $NutrimentsEntriesTable(attachedDatabase, alias);
  }

  static TypeConverter<Quantity, String> $converter0 =
      const QuantityConverter();
  static TypeConverter<Quantity, String> $converter1 =
      const QuantityConverter();
  static TypeConverter<Quantity, String> $converter2 =
      const QuantityConverter();
  static TypeConverter<Quantity, String> $converter3 =
      const QuantityConverter();
  static TypeConverter<Quantity, String> $converter4 =
      const QuantityConverter();
  static TypeConverter<Quantity, String> $converter5 =
      const QuantityConverter();
  static TypeConverter<Quantity, String> $converter6 =
      const QuantityConverter();
}

abstract class _$TestDatabase extends GeneratedDatabase {
  _$TestDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  _$TestDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $SourceEntriesTable sourceEntries = $SourceEntriesTable(this);
  late final $ProductEntriesTable productEntries = $ProductEntriesTable(this);
  late final $NutrimentsEntriesTable nutrimentsEntries =
      $NutrimentsEntriesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [sourceEntries, productEntries, nutrimentsEntries];
}
