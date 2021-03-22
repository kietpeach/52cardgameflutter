///
//  Generated code. Do not modify.
//  source: gametable.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserCredential extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserCredential', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gametable'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..hasRequiredFields = false
  ;

  UserCredential._() : super();
  factory UserCredential({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory UserCredential.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCredential.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCredential clone() => UserCredential()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCredential copyWith(void Function(UserCredential) updates) => super.copyWith((message) => updates(message as UserCredential)) as UserCredential; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCredential create() => UserCredential._();
  UserCredential createEmptyInstance() => create();
  static $pb.PbList<UserCredential> createRepeated() => $pb.PbList<UserCredential>();
  @$core.pragma('dart2js:noInline')
  static UserCredential getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCredential>(create);
  static UserCredential? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class String_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'String_Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gametable'), createEmptyInstance: create)
    ..aOM<UserCredential>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: UserCredential.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StringInput', protoName: 'StringInput')
    ..hasRequiredFields = false
  ;

  String_Request._() : super();
  factory String_Request({
    UserCredential? user,
    $core.String? stringInput,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (stringInput != null) {
      _result.stringInput = stringInput;
    }
    return _result;
  }
  factory String_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory String_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  String_Request clone() => String_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  String_Request copyWith(void Function(String_Request) updates) => super.copyWith((message) => updates(message as String_Request)) as String_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static String_Request create() => String_Request._();
  String_Request createEmptyInstance() => create();
  static $pb.PbList<String_Request> createRepeated() => $pb.PbList<String_Request>();
  @$core.pragma('dart2js:noInline')
  static String_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<String_Request>(create);
  static String_Request? _defaultInstance;

  @$pb.TagNumber(1)
  UserCredential get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(UserCredential v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  UserCredential ensureUser() => $_ensure(0);

  @$pb.TagNumber(4)
  $core.String get stringInput => $_getSZ(1);
  @$pb.TagNumber(4)
  set stringInput($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasStringInput() => $_has(1);
  @$pb.TagNumber(4)
  void clearStringInput() => clearField(4);
}

class AskCreateRoom_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AskCreateRoom_Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gametable'), createEmptyInstance: create)
    ..aOM<UserCredential>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: UserCredential.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CurrencyType', $pb.PbFieldType.O3, protoName: 'CurrencyType')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BetAmount', $pb.PbFieldType.O3, protoName: 'BetAmount')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomId', protoName: 'RoomId')
    ..hasRequiredFields = false
  ;

  AskCreateRoom_Request._() : super();
  factory AskCreateRoom_Request({
    UserCredential? user,
    $core.int? currencyType,
    $core.int? betAmount,
    $core.String? roomId,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (currencyType != null) {
      _result.currencyType = currencyType;
    }
    if (betAmount != null) {
      _result.betAmount = betAmount;
    }
    if (roomId != null) {
      _result.roomId = roomId;
    }
    return _result;
  }
  factory AskCreateRoom_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AskCreateRoom_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AskCreateRoom_Request clone() => AskCreateRoom_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AskCreateRoom_Request copyWith(void Function(AskCreateRoom_Request) updates) => super.copyWith((message) => updates(message as AskCreateRoom_Request)) as AskCreateRoom_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AskCreateRoom_Request create() => AskCreateRoom_Request._();
  AskCreateRoom_Request createEmptyInstance() => create();
  static $pb.PbList<AskCreateRoom_Request> createRepeated() => $pb.PbList<AskCreateRoom_Request>();
  @$core.pragma('dart2js:noInline')
  static AskCreateRoom_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AskCreateRoom_Request>(create);
  static AskCreateRoom_Request? _defaultInstance;

  @$pb.TagNumber(1)
  UserCredential get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(UserCredential v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  UserCredential ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get currencyType => $_getIZ(1);
  @$pb.TagNumber(2)
  set currencyType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrencyType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrencyType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get betAmount => $_getIZ(2);
  @$pb.TagNumber(3)
  set betAmount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBetAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearBetAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get roomId => $_getSZ(3);
  @$pb.TagNumber(4)
  set roomId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoomId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoomId() => clearField(4);
}

class Empty_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty_Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gametable'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnCode', $pb.PbFieldType.O3, protoName: 'ReturnCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnMsg', protoName: 'ReturnMsg')
    ..hasRequiredFields = false
  ;

  Empty_Response._() : super();
  factory Empty_Response({
    $core.int? returnCode,
    $core.String? returnMsg,
  }) {
    final _result = create();
    if (returnCode != null) {
      _result.returnCode = returnCode;
    }
    if (returnMsg != null) {
      _result.returnMsg = returnMsg;
    }
    return _result;
  }
  factory Empty_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty_Response clone() => Empty_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty_Response copyWith(void Function(Empty_Response) updates) => super.copyWith((message) => updates(message as Empty_Response)) as Empty_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty_Response create() => Empty_Response._();
  Empty_Response createEmptyInstance() => create();
  static $pb.PbList<Empty_Response> createRepeated() => $pb.PbList<Empty_Response>();
  @$core.pragma('dart2js:noInline')
  static Empty_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty_Response>(create);
  static Empty_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get returnCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set returnCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReturnCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturnCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get returnMsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set returnMsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReturnMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearReturnMsg() => clearField(2);
}

class RoomInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoomInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gametable'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomId', protoName: 'RoomId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PlayerNameList', protoName: 'PlayerNameList')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CurrentMemberNum', $pb.PbFieldType.O3, protoName: 'CurrentMemberNum')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PlayerNumber', $pb.PbFieldType.O3, protoName: 'PlayerNumber')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CurrencyType', $pb.PbFieldType.O3, protoName: 'CurrencyType')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BetAmount', $pb.PbFieldType.O3, protoName: 'BetAmount')
    ..aOS(999, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UpdMode', protoName: 'UpdMode')
    ..hasRequiredFields = false
  ;

  RoomInfo._() : super();
  factory RoomInfo({
    $core.String? roomId,
    $core.Iterable<$core.String>? playerNameList,
    $core.int? currentMemberNum,
    $core.int? playerNumber,
    $core.int? currencyType,
    $core.int? betAmount,
    $core.String? updMode,
  }) {
    final _result = create();
    if (roomId != null) {
      _result.roomId = roomId;
    }
    if (playerNameList != null) {
      _result.playerNameList.addAll(playerNameList);
    }
    if (currentMemberNum != null) {
      _result.currentMemberNum = currentMemberNum;
    }
    if (playerNumber != null) {
      _result.playerNumber = playerNumber;
    }
    if (currencyType != null) {
      _result.currencyType = currencyType;
    }
    if (betAmount != null) {
      _result.betAmount = betAmount;
    }
    if (updMode != null) {
      _result.updMode = updMode;
    }
    return _result;
  }
  factory RoomInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomInfo clone() => RoomInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomInfo copyWith(void Function(RoomInfo) updates) => super.copyWith((message) => updates(message as RoomInfo)) as RoomInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomInfo create() => RoomInfo._();
  RoomInfo createEmptyInstance() => create();
  static $pb.PbList<RoomInfo> createRepeated() => $pb.PbList<RoomInfo>();
  @$core.pragma('dart2js:noInline')
  static RoomInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomInfo>(create);
  static RoomInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roomId => $_getSZ(0);
  @$pb.TagNumber(1)
  set roomId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get playerNameList => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get currentMemberNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentMemberNum($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentMemberNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentMemberNum() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get playerNumber => $_getIZ(3);
  @$pb.TagNumber(4)
  set playerNumber($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlayerNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayerNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get currencyType => $_getIZ(4);
  @$pb.TagNumber(5)
  set currencyType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrencyType() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrencyType() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get betAmount => $_getIZ(5);
  @$pb.TagNumber(6)
  set betAmount($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBetAmount() => $_has(5);
  @$pb.TagNumber(6)
  void clearBetAmount() => clearField(6);

  @$pb.TagNumber(999)
  $core.String get updMode => $_getSZ(6);
  @$pb.TagNumber(999)
  set updMode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(999)
  $core.bool hasUpdMode() => $_has(6);
  @$pb.TagNumber(999)
  void clearUpdMode() => clearField(999);
}

class GetRoomInfo_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomInfo_Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gametable'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnCode', $pb.PbFieldType.O3, protoName: 'ReturnCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnMsg', protoName: 'ReturnMsg')
    ..aOM<RoomInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Room', protoName: 'Room', subBuilder: RoomInfo.create)
    ..hasRequiredFields = false
  ;

  GetRoomInfo_Response._() : super();
  factory GetRoomInfo_Response({
    $core.int? returnCode,
    $core.String? returnMsg,
    RoomInfo? room,
  }) {
    final _result = create();
    if (returnCode != null) {
      _result.returnCode = returnCode;
    }
    if (returnMsg != null) {
      _result.returnMsg = returnMsg;
    }
    if (room != null) {
      _result.room = room;
    }
    return _result;
  }
  factory GetRoomInfo_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomInfo_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomInfo_Response clone() => GetRoomInfo_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomInfo_Response copyWith(void Function(GetRoomInfo_Response) updates) => super.copyWith((message) => updates(message as GetRoomInfo_Response)) as GetRoomInfo_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomInfo_Response create() => GetRoomInfo_Response._();
  GetRoomInfo_Response createEmptyInstance() => create();
  static $pb.PbList<GetRoomInfo_Response> createRepeated() => $pb.PbList<GetRoomInfo_Response>();
  @$core.pragma('dart2js:noInline')
  static GetRoomInfo_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomInfo_Response>(create);
  static GetRoomInfo_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get returnCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set returnCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReturnCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturnCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get returnMsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set returnMsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReturnMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearReturnMsg() => clearField(2);

  @$pb.TagNumber(3)
  RoomInfo get room => $_getN(2);
  @$pb.TagNumber(3)
  set room(RoomInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoom() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoom() => clearField(3);
  @$pb.TagNumber(3)
  RoomInfo ensureRoom() => $_ensure(2);
}

