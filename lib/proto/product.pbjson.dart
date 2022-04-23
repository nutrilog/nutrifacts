///
//  Generated code. Do not modify.
//  source: proto/product.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use serializedSourceDescriptor instead')
const SerializedSource$json = const {
  '1': 'SerializedSource',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'license', '3': 3, '4': 1, '5': 9, '10': 'license'},
    const {'1': 'link', '3': 4, '4': 1, '5': 9, '10': 'link'},
  ],
};

/// Descriptor for `SerializedSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serializedSourceDescriptor = $convert.base64Decode('ChBTZXJpYWxpemVkU291cmNlEhIKBG5hbWUYAiABKAlSBG5hbWUSGAoHbGljZW5zZRgDIAEoCVIHbGljZW5zZRISCgRsaW5rGAQgASgJUgRsaW5r');
@$core.Deprecated('Use serializedProductDescriptor instead')
const SerializedProduct$json = const {
  '1': 'SerializedProduct',
  '2': const [
    const {'1': 'barcode', '3': 2, '4': 1, '5': 9, '10': 'barcode'},
    const {'1': 'brandName', '3': 3, '4': 1, '5': 9, '10': 'brandName'},
    const {'1': 'genericName', '3': 4, '4': 1, '5': 9, '10': 'genericName'},
    const {'1': 'nutriments', '3': 5, '4': 1, '5': 11, '6': '.SerializedProduct.Nutriments', '10': 'nutriments'},
    const {'1': 'servingSize', '3': 6, '4': 1, '5': 11, '6': '.SerializedProduct.Quantity', '10': 'servingSize'},
  ],
  '3': const [SerializedProduct_Nutriments$json, SerializedProduct_Quantity$json],
};

@$core.Deprecated('Use serializedProductDescriptor instead')
const SerializedProduct_Nutriments$json = const {
  '1': 'Nutriments',
  '2': const [
    const {'1': 'energy', '3': 1, '4': 1, '5': 11, '6': '.SerializedProduct.Quantity', '10': 'energy'},
    const {'1': 'protein', '3': 2, '4': 1, '5': 11, '6': '.SerializedProduct.Quantity', '10': 'protein'},
    const {'1': 'carbohydrate', '3': 3, '4': 1, '5': 11, '6': '.SerializedProduct.Quantity', '10': 'carbohydrate'},
    const {'1': 'sugar', '3': 4, '4': 1, '5': 11, '6': '.SerializedProduct.Quantity', '10': 'sugar'},
    const {'1': 'fat', '3': 5, '4': 1, '5': 11, '6': '.SerializedProduct.Quantity', '10': 'fat'},
    const {'1': 'fiber', '3': 6, '4': 1, '5': 11, '6': '.SerializedProduct.Quantity', '10': 'fiber'},
    const {'1': 'sodium', '3': 7, '4': 1, '5': 11, '6': '.SerializedProduct.Quantity', '10': 'sodium'},
  ],
};

@$core.Deprecated('Use serializedProductDescriptor instead')
const SerializedProduct_Quantity$json = const {
  '1': 'Quantity',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 1, '10': 'value'},
    const {'1': 'unit', '3': 2, '4': 1, '5': 11, '6': '.SerializedProduct.Quantity.Unit', '10': 'unit'},
  ],
  '3': const [SerializedProduct_Quantity_Unit$json],
};

@$core.Deprecated('Use serializedProductDescriptor instead')
const SerializedProduct_Quantity_Unit$json = const {
  '1': 'Unit',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.SerializedProduct.Quantity.Unit.UnitType', '10': 'type'},
    const {'1': 'conversionRate', '3': 4, '4': 1, '5': 1, '10': 'conversionRate'},
  ],
  '4': const [SerializedProduct_Quantity_Unit_UnitType$json],
};

@$core.Deprecated('Use serializedProductDescriptor instead')
const SerializedProduct_Quantity_Unit_UnitType$json = const {
  '1': 'UnitType',
  '2': const [
    const {'1': 'mass', '2': 0},
    const {'1': 'volume', '2': 1},
    const {'1': 'energy', '2': 2},
  ],
};

/// Descriptor for `SerializedProduct`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serializedProductDescriptor = $convert.base64Decode('ChFTZXJpYWxpemVkUHJvZHVjdBIYCgdiYXJjb2RlGAIgASgJUgdiYXJjb2RlEhwKCWJyYW5kTmFtZRgDIAEoCVIJYnJhbmROYW1lEiAKC2dlbmVyaWNOYW1lGAQgASgJUgtnZW5lcmljTmFtZRI9CgpudXRyaW1lbnRzGAUgASgLMh0uU2VyaWFsaXplZFByb2R1Y3QuTnV0cmltZW50c1IKbnV0cmltZW50cxI9CgtzZXJ2aW5nU2l6ZRgGIAEoCzIbLlNlcmlhbGl6ZWRQcm9kdWN0LlF1YW50aXR5UgtzZXJ2aW5nU2l6ZRqDAwoKTnV0cmltZW50cxIzCgZlbmVyZ3kYASABKAsyGy5TZXJpYWxpemVkUHJvZHVjdC5RdWFudGl0eVIGZW5lcmd5EjUKB3Byb3RlaW4YAiABKAsyGy5TZXJpYWxpemVkUHJvZHVjdC5RdWFudGl0eVIHcHJvdGVpbhI/CgxjYXJib2h5ZHJhdGUYAyABKAsyGy5TZXJpYWxpemVkUHJvZHVjdC5RdWFudGl0eVIMY2FyYm9oeWRyYXRlEjEKBXN1Z2FyGAQgASgLMhsuU2VyaWFsaXplZFByb2R1Y3QuUXVhbnRpdHlSBXN1Z2FyEi0KA2ZhdBgFIAEoCzIbLlNlcmlhbGl6ZWRQcm9kdWN0LlF1YW50aXR5UgNmYXQSMQoFZmliZXIYBiABKAsyGy5TZXJpYWxpemVkUHJvZHVjdC5RdWFudGl0eVIFZmliZXISMwoGc29kaXVtGAcgASgLMhsuU2VyaWFsaXplZFByb2R1Y3QuUXVhbnRpdHlSBnNvZGl1bRqgAgoIUXVhbnRpdHkSFAoFdmFsdWUYASABKAFSBXZhbHVlEjQKBHVuaXQYAiABKAsyIC5TZXJpYWxpemVkUHJvZHVjdC5RdWFudGl0eS5Vbml0UgR1bml0GscBCgRVbml0EhIKBG5hbWUYASABKAlSBG5hbWUSFgoGc3ltYm9sGAIgASgJUgZzeW1ib2wSPQoEdHlwZRgDIAEoDjIpLlNlcmlhbGl6ZWRQcm9kdWN0LlF1YW50aXR5LlVuaXQuVW5pdFR5cGVSBHR5cGUSJgoOY29udmVyc2lvblJhdGUYBCABKAFSDmNvbnZlcnNpb25SYXRlIiwKCFVuaXRUeXBlEggKBG1hc3MQABIKCgZ2b2x1bWUQARIKCgZlbmVyZ3kQAg==');
