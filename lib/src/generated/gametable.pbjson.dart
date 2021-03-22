///
//  Generated code. Do not modify.
//  source: gametable.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userCredentialDescriptor instead')
const UserCredential$json = const {
  '1': 'UserCredential',
  '2': const [
    const {'1': 'Name', '3': 1, '4': 1, '5': 9, '10': 'Name'},
  ],
};

/// Descriptor for `UserCredential`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCredentialDescriptor = $convert.base64Decode('Cg5Vc2VyQ3JlZGVudGlhbBISCgROYW1lGAEgASgJUgROYW1l');
@$core.Deprecated('Use string_RequestDescriptor instead')
const String_Request$json = const {
  '1': 'String_Request',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.gametable.UserCredential', '10': 'User'},
    const {'1': 'StringInput', '3': 4, '4': 1, '5': 9, '10': 'StringInput'},
  ],
};

/// Descriptor for `String_Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List string_RequestDescriptor = $convert.base64Decode('Cg5TdHJpbmdfUmVxdWVzdBItCgRVc2VyGAEgASgLMhkuZ2FtZXRhYmxlLlVzZXJDcmVkZW50aWFsUgRVc2VyEiAKC1N0cmluZ0lucHV0GAQgASgJUgtTdHJpbmdJbnB1dA==');
@$core.Deprecated('Use askCreateRoom_RequestDescriptor instead')
const AskCreateRoom_Request$json = const {
  '1': 'AskCreateRoom_Request',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.gametable.UserCredential', '10': 'User'},
    const {'1': 'CurrencyType', '3': 2, '4': 1, '5': 5, '10': 'CurrencyType'},
    const {'1': 'BetAmount', '3': 3, '4': 1, '5': 5, '10': 'BetAmount'},
    const {'1': 'RoomId', '3': 4, '4': 1, '5': 9, '10': 'RoomId'},
  ],
};

/// Descriptor for `AskCreateRoom_Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List askCreateRoom_RequestDescriptor = $convert.base64Decode('ChVBc2tDcmVhdGVSb29tX1JlcXVlc3QSLQoEVXNlchgBIAEoCzIZLmdhbWV0YWJsZS5Vc2VyQ3JlZGVudGlhbFIEVXNlchIiCgxDdXJyZW5jeVR5cGUYAiABKAVSDEN1cnJlbmN5VHlwZRIcCglCZXRBbW91bnQYAyABKAVSCUJldEFtb3VudBIWCgZSb29tSWQYBCABKAlSBlJvb21JZA==');
@$core.Deprecated('Use empty_ResponseDescriptor instead')
const Empty_Response$json = const {
  '1': 'Empty_Response',
  '2': const [
    const {'1': 'ReturnCode', '3': 1, '4': 1, '5': 5, '10': 'ReturnCode'},
    const {'1': 'ReturnMsg', '3': 2, '4': 1, '5': 9, '10': 'ReturnMsg'},
  ],
};

/// Descriptor for `Empty_Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List empty_ResponseDescriptor = $convert.base64Decode('Cg5FbXB0eV9SZXNwb25zZRIeCgpSZXR1cm5Db2RlGAEgASgFUgpSZXR1cm5Db2RlEhwKCVJldHVybk1zZxgCIAEoCVIJUmV0dXJuTXNn');
@$core.Deprecated('Use roomInfoDescriptor instead')
const RoomInfo$json = const {
  '1': 'RoomInfo',
  '2': const [
    const {'1': 'RoomId', '3': 1, '4': 1, '5': 9, '10': 'RoomId'},
    const {'1': 'PlayerNameList', '3': 2, '4': 3, '5': 9, '10': 'PlayerNameList'},
    const {'1': 'CurrentMemberNum', '3': 3, '4': 1, '5': 5, '10': 'CurrentMemberNum'},
    const {'1': 'PlayerNumber', '3': 4, '4': 1, '5': 5, '10': 'PlayerNumber'},
    const {'1': 'CurrencyType', '3': 5, '4': 1, '5': 5, '10': 'CurrencyType'},
    const {'1': 'BetAmount', '3': 6, '4': 1, '5': 5, '10': 'BetAmount'},
    const {'1': 'UpdMode', '3': 999, '4': 1, '5': 9, '10': 'UpdMode'},
  ],
};

/// Descriptor for `RoomInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomInfoDescriptor = $convert.base64Decode('CghSb29tSW5mbxIWCgZSb29tSWQYASABKAlSBlJvb21JZBImCg5QbGF5ZXJOYW1lTGlzdBgCIAMoCVIOUGxheWVyTmFtZUxpc3QSKgoQQ3VycmVudE1lbWJlck51bRgDIAEoBVIQQ3VycmVudE1lbWJlck51bRIiCgxQbGF5ZXJOdW1iZXIYBCABKAVSDFBsYXllck51bWJlchIiCgxDdXJyZW5jeVR5cGUYBSABKAVSDEN1cnJlbmN5VHlwZRIcCglCZXRBbW91bnQYBiABKAVSCUJldEFtb3VudBIZCgdVcGRNb2RlGOcHIAEoCVIHVXBkTW9kZQ==');
@$core.Deprecated('Use getRoomInfo_ResponseDescriptor instead')
const GetRoomInfo_Response$json = const {
  '1': 'GetRoomInfo_Response',
  '2': const [
    const {'1': 'ReturnCode', '3': 1, '4': 1, '5': 5, '10': 'ReturnCode'},
    const {'1': 'ReturnMsg', '3': 2, '4': 1, '5': 9, '10': 'ReturnMsg'},
    const {'1': 'Room', '3': 3, '4': 1, '5': 11, '6': '.gametable.RoomInfo', '10': 'Room'},
  ],
};

/// Descriptor for `GetRoomInfo_Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomInfo_ResponseDescriptor = $convert.base64Decode('ChRHZXRSb29tSW5mb19SZXNwb25zZRIeCgpSZXR1cm5Db2RlGAEgASgFUgpSZXR1cm5Db2RlEhwKCVJldHVybk1zZxgCIAEoCVIJUmV0dXJuTXNnEicKBFJvb20YAyABKAsyEy5nYW1ldGFibGUuUm9vbUluZm9SBFJvb20=');
