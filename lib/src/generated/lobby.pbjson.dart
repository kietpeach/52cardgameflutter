///
//  Generated code. Do not modify.
//  source: lobby.proto
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
@$core.Deprecated('Use empty_RequestDescriptor instead')
const Empty_Request$json = const {
  '1': 'Empty_Request',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.lobby.UserCredential', '10': 'User'},
  ],
};

/// Descriptor for `Empty_Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List empty_RequestDescriptor = $convert.base64Decode('Cg1FbXB0eV9SZXF1ZXN0EikKBFVzZXIYASABKAsyFS5sb2JieS5Vc2VyQ3JlZGVudGlhbFIEVXNlcg==');
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
@$core.Deprecated('Use logIn_RequestDescriptor instead')
const LogIn_Request$json = const {
  '1': 'LogIn_Request',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.lobby.UserCredential', '10': 'User'},
  ],
};

/// Descriptor for `LogIn_Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logIn_RequestDescriptor = $convert.base64Decode('Cg1Mb2dJbl9SZXF1ZXN0EikKBFVzZXIYASABKAsyFS5sb2JieS5Vc2VyQ3JlZGVudGlhbFIEVXNlcg==');
@$core.Deprecated('Use askJoinRoom_RequestDescriptor instead')
const AskJoinRoom_Request$json = const {
  '1': 'AskJoinRoom_Request',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.lobby.UserCredential', '10': 'User'},
    const {'1': 'RoomId', '3': 2, '4': 1, '5': 9, '10': 'RoomId'},
  ],
};

/// Descriptor for `AskJoinRoom_Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List askJoinRoom_RequestDescriptor = $convert.base64Decode('ChNBc2tKb2luUm9vbV9SZXF1ZXN0EikKBFVzZXIYASABKAsyFS5sb2JieS5Vc2VyQ3JlZGVudGlhbFIEVXNlchIWCgZSb29tSWQYAiABKAlSBlJvb21JZA==');
@$core.Deprecated('Use askCreateRoom_RequestDescriptor instead')
const AskCreateRoom_Request$json = const {
  '1': 'AskCreateRoom_Request',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.lobby.UserCredential', '10': 'User'},
    const {'1': 'CurrencyType', '3': 2, '4': 1, '5': 5, '10': 'CurrencyType'},
    const {'1': 'BetAmount', '3': 3, '4': 1, '5': 5, '10': 'BetAmount'},
  ],
};

/// Descriptor for `AskCreateRoom_Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List askCreateRoom_RequestDescriptor = $convert.base64Decode('ChVBc2tDcmVhdGVSb29tX1JlcXVlc3QSKQoEVXNlchgBIAEoCzIVLmxvYmJ5LlVzZXJDcmVkZW50aWFsUgRVc2VyEiIKDEN1cnJlbmN5VHlwZRgCIAEoBVIMQ3VycmVuY3lUeXBlEhwKCUJldEFtb3VudBgDIAEoBVIJQmV0QW1vdW50');
@$core.Deprecated('Use updateRoomList_RequestDescriptor instead')
const UpdateRoomList_Request$json = const {
  '1': 'UpdateRoomList_Request',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.lobby.UserCredential', '10': 'User'},
    const {'1': 'RoomList', '3': 2, '4': 3, '5': 11, '6': '.lobby.LobbyRoom', '10': 'RoomList'},
  ],
};

/// Descriptor for `UpdateRoomList_Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRoomList_RequestDescriptor = $convert.base64Decode('ChZVcGRhdGVSb29tTGlzdF9SZXF1ZXN0EikKBFVzZXIYASABKAsyFS5sb2JieS5Vc2VyQ3JlZGVudGlhbFIEVXNlchIsCghSb29tTGlzdBgCIAMoCzIQLmxvYmJ5LkxvYmJ5Um9vbVIIUm9vbUxpc3Q=');
@$core.Deprecated('Use logIn_ResponseDescriptor instead')
const LogIn_Response$json = const {
  '1': 'LogIn_Response',
  '2': const [
    const {'1': 'ReturnCode', '3': 1, '4': 1, '5': 5, '10': 'ReturnCode'},
    const {'1': 'ReturnMsg', '3': 2, '4': 1, '5': 9, '10': 'ReturnMsg'},
  ],
};

/// Descriptor for `LogIn_Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logIn_ResponseDescriptor = $convert.base64Decode('Cg5Mb2dJbl9SZXNwb25zZRIeCgpSZXR1cm5Db2RlGAEgASgFUgpSZXR1cm5Db2RlEhwKCVJldHVybk1zZxgCIAEoCVIJUmV0dXJuTXNn');
@$core.Deprecated('Use lobbyRoomDescriptor instead')
const LobbyRoom$json = const {
  '1': 'LobbyRoom',
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

/// Descriptor for `LobbyRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lobbyRoomDescriptor = $convert.base64Decode('CglMb2JieVJvb20SFgoGUm9vbUlkGAEgASgJUgZSb29tSWQSJgoOUGxheWVyTmFtZUxpc3QYAiADKAlSDlBsYXllck5hbWVMaXN0EioKEEN1cnJlbnRNZW1iZXJOdW0YAyABKAVSEEN1cnJlbnRNZW1iZXJOdW0SIgoMUGxheWVyTnVtYmVyGAQgASgFUgxQbGF5ZXJOdW1iZXISIgoMQ3VycmVuY3lUeXBlGAUgASgFUgxDdXJyZW5jeVR5cGUSHAoJQmV0QW1vdW50GAYgASgFUglCZXRBbW91bnQSGQoHVXBkTW9kZRjnByABKAlSB1VwZE1vZGU=');
@$core.Deprecated('Use askRoomList_ResponseDescriptor instead')
const AskRoomList_Response$json = const {
  '1': 'AskRoomList_Response',
  '2': const [
    const {'1': 'ReturnCode', '3': 1, '4': 1, '5': 5, '10': 'ReturnCode'},
    const {'1': 'ReturnMsg', '3': 2, '4': 1, '5': 9, '10': 'ReturnMsg'},
    const {'1': 'RoomList', '3': 3, '4': 3, '5': 11, '6': '.lobby.LobbyRoom', '10': 'RoomList'},
  ],
};

/// Descriptor for `AskRoomList_Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List askRoomList_ResponseDescriptor = $convert.base64Decode('ChRBc2tSb29tTGlzdF9SZXNwb25zZRIeCgpSZXR1cm5Db2RlGAEgASgFUgpSZXR1cm5Db2RlEhwKCVJldHVybk1zZxgCIAEoCVIJUmV0dXJuTXNnEiwKCFJvb21MaXN0GAMgAygLMhAubG9iYnkuTG9iYnlSb29tUghSb29tTGlzdA==');
@$core.Deprecated('Use roomConnetioninfoDescriptor instead')
const RoomConnetioninfo$json = const {
  '1': 'RoomConnetioninfo',
  '2': const [
    const {'1': 'IP', '3': 1, '4': 1, '5': 9, '10': 'IP'},
    const {'1': 'Port', '3': 2, '4': 1, '5': 9, '10': 'Port'},
    const {'1': 'RoomId', '3': 3, '4': 1, '5': 9, '10': 'RoomId'},
  ],
};

/// Descriptor for `RoomConnetioninfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomConnetioninfoDescriptor = $convert.base64Decode('ChFSb29tQ29ubmV0aW9uaW5mbxIOCgJJUBgBIAEoCVICSVASEgoEUG9ydBgCIAEoCVIEUG9ydBIWCgZSb29tSWQYAyABKAlSBlJvb21JZA==');
@$core.Deprecated('Use askJoinRoom_ResponseDescriptor instead')
const AskJoinRoom_Response$json = const {
  '1': 'AskJoinRoom_Response',
  '2': const [
    const {'1': 'ReturnCode', '3': 1, '4': 1, '5': 5, '10': 'ReturnCode'},
    const {'1': 'ReturnMsg', '3': 2, '4': 1, '5': 9, '10': 'ReturnMsg'},
    const {'1': 'RoomInfo', '3': 3, '4': 1, '5': 11, '6': '.lobby.RoomConnetioninfo', '10': 'RoomInfo'},
  ],
};

/// Descriptor for `AskJoinRoom_Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List askJoinRoom_ResponseDescriptor = $convert.base64Decode('ChRBc2tKb2luUm9vbV9SZXNwb25zZRIeCgpSZXR1cm5Db2RlGAEgASgFUgpSZXR1cm5Db2RlEhwKCVJldHVybk1zZxgCIAEoCVIJUmV0dXJuTXNnEjQKCFJvb21JbmZvGAMgASgLMhgubG9iYnkuUm9vbUNvbm5ldGlvbmluZm9SCFJvb21JbmZv');
@$core.Deprecated('Use askCreateRoom_ResponseDescriptor instead')
const AskCreateRoom_Response$json = const {
  '1': 'AskCreateRoom_Response',
  '2': const [
    const {'1': 'ReturnCode', '3': 1, '4': 1, '5': 5, '10': 'ReturnCode'},
    const {'1': 'ReturnMsg', '3': 2, '4': 1, '5': 9, '10': 'ReturnMsg'},
    const {'1': 'RoomInfo', '3': 3, '4': 1, '5': 11, '6': '.lobby.RoomConnetioninfo', '10': 'RoomInfo'},
  ],
};

/// Descriptor for `AskCreateRoom_Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List askCreateRoom_ResponseDescriptor = $convert.base64Decode('ChZBc2tDcmVhdGVSb29tX1Jlc3BvbnNlEh4KClJldHVybkNvZGUYASABKAVSClJldHVybkNvZGUSHAoJUmV0dXJuTXNnGAIgASgJUglSZXR1cm5Nc2cSNAoIUm9vbUluZm8YAyABKAsyGC5sb2JieS5Sb29tQ29ubmV0aW9uaW5mb1IIUm9vbUluZm8=');
