///
//  Generated code. Do not modify.
//  source: lobby.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserCredential extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserCredential', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
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

class Empty_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty_Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..aOM<UserCredential>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: UserCredential.create)
    ..hasRequiredFields = false
  ;

  Empty_Request._() : super();
  factory Empty_Request({
    UserCredential? user,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory Empty_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty_Request clone() => Empty_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty_Request copyWith(void Function(Empty_Request) updates) => super.copyWith((message) => updates(message as Empty_Request)) as Empty_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty_Request create() => Empty_Request._();
  Empty_Request createEmptyInstance() => create();
  static $pb.PbList<Empty_Request> createRepeated() => $pb.PbList<Empty_Request>();
  @$core.pragma('dart2js:noInline')
  static Empty_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty_Request>(create);
  static Empty_Request? _defaultInstance;

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
}

class Empty_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty_Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
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

class LogIn_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogIn_Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..aOM<UserCredential>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: UserCredential.create)
    ..hasRequiredFields = false
  ;

  LogIn_Request._() : super();
  factory LogIn_Request({
    UserCredential? user,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory LogIn_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogIn_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogIn_Request clone() => LogIn_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogIn_Request copyWith(void Function(LogIn_Request) updates) => super.copyWith((message) => updates(message as LogIn_Request)) as LogIn_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogIn_Request create() => LogIn_Request._();
  LogIn_Request createEmptyInstance() => create();
  static $pb.PbList<LogIn_Request> createRepeated() => $pb.PbList<LogIn_Request>();
  @$core.pragma('dart2js:noInline')
  static LogIn_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogIn_Request>(create);
  static LogIn_Request? _defaultInstance;

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
}

class AskJoinRoom_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AskJoinRoom_Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..aOM<UserCredential>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: UserCredential.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomId', protoName: 'RoomId')
    ..hasRequiredFields = false
  ;

  AskJoinRoom_Request._() : super();
  factory AskJoinRoom_Request({
    UserCredential? user,
    $core.String? roomId,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (roomId != null) {
      _result.roomId = roomId;
    }
    return _result;
  }
  factory AskJoinRoom_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AskJoinRoom_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AskJoinRoom_Request clone() => AskJoinRoom_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AskJoinRoom_Request copyWith(void Function(AskJoinRoom_Request) updates) => super.copyWith((message) => updates(message as AskJoinRoom_Request)) as AskJoinRoom_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AskJoinRoom_Request create() => AskJoinRoom_Request._();
  AskJoinRoom_Request createEmptyInstance() => create();
  static $pb.PbList<AskJoinRoom_Request> createRepeated() => $pb.PbList<AskJoinRoom_Request>();
  @$core.pragma('dart2js:noInline')
  static AskJoinRoom_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AskJoinRoom_Request>(create);
  static AskJoinRoom_Request? _defaultInstance;

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
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);
}

class AskCreateRoom_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AskCreateRoom_Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..aOM<UserCredential>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: UserCredential.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CurrencyType', $pb.PbFieldType.O3, protoName: 'CurrencyType')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BetAmount', $pb.PbFieldType.O3, protoName: 'BetAmount')
    ..hasRequiredFields = false
  ;

  AskCreateRoom_Request._() : super();
  factory AskCreateRoom_Request({
    UserCredential? user,
    $core.int? currencyType,
    $core.int? betAmount,
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
}

class UpdateRoomList_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRoomList_Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..aOM<UserCredential>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: UserCredential.create)
    ..pc<LobbyRoom>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomList', $pb.PbFieldType.PM, protoName: 'RoomList', subBuilder: LobbyRoom.create)
    ..hasRequiredFields = false
  ;

  UpdateRoomList_Request._() : super();
  factory UpdateRoomList_Request({
    UserCredential? user,
    $core.Iterable<LobbyRoom>? roomList,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (roomList != null) {
      _result.roomList.addAll(roomList);
    }
    return _result;
  }
  factory UpdateRoomList_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRoomList_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRoomList_Request clone() => UpdateRoomList_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRoomList_Request copyWith(void Function(UpdateRoomList_Request) updates) => super.copyWith((message) => updates(message as UpdateRoomList_Request)) as UpdateRoomList_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRoomList_Request create() => UpdateRoomList_Request._();
  UpdateRoomList_Request createEmptyInstance() => create();
  static $pb.PbList<UpdateRoomList_Request> createRepeated() => $pb.PbList<UpdateRoomList_Request>();
  @$core.pragma('dart2js:noInline')
  static UpdateRoomList_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRoomList_Request>(create);
  static UpdateRoomList_Request? _defaultInstance;

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
  $core.List<LobbyRoom> get roomList => $_getList(1);
}

class LogIn_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogIn_Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnCode', $pb.PbFieldType.O3, protoName: 'ReturnCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnMsg', protoName: 'ReturnMsg')
    ..hasRequiredFields = false
  ;

  LogIn_Response._() : super();
  factory LogIn_Response({
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
  factory LogIn_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogIn_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogIn_Response clone() => LogIn_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogIn_Response copyWith(void Function(LogIn_Response) updates) => super.copyWith((message) => updates(message as LogIn_Response)) as LogIn_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogIn_Response create() => LogIn_Response._();
  LogIn_Response createEmptyInstance() => create();
  static $pb.PbList<LogIn_Response> createRepeated() => $pb.PbList<LogIn_Response>();
  @$core.pragma('dart2js:noInline')
  static LogIn_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogIn_Response>(create);
  static LogIn_Response? _defaultInstance;

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

class LobbyRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LobbyRoom', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomId', protoName: 'RoomId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PlayerNameList', protoName: 'PlayerNameList')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CurrentMemberNum', $pb.PbFieldType.O3, protoName: 'CurrentMemberNum')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PlayerNumber', $pb.PbFieldType.O3, protoName: 'PlayerNumber')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CurrencyType', $pb.PbFieldType.O3, protoName: 'CurrencyType')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BetAmount', $pb.PbFieldType.O3, protoName: 'BetAmount')
    ..aOS(999, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UpdMode', protoName: 'UpdMode')
    ..hasRequiredFields = false
  ;

  LobbyRoom._() : super();
  factory LobbyRoom({
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
  factory LobbyRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LobbyRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LobbyRoom clone() => LobbyRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LobbyRoom copyWith(void Function(LobbyRoom) updates) => super.copyWith((message) => updates(message as LobbyRoom)) as LobbyRoom; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LobbyRoom create() => LobbyRoom._();
  LobbyRoom createEmptyInstance() => create();
  static $pb.PbList<LobbyRoom> createRepeated() => $pb.PbList<LobbyRoom>();
  @$core.pragma('dart2js:noInline')
  static LobbyRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LobbyRoom>(create);
  static LobbyRoom? _defaultInstance;

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

class AskRoomList_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AskRoomList_Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnCode', $pb.PbFieldType.O3, protoName: 'ReturnCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnMsg', protoName: 'ReturnMsg')
    ..pc<LobbyRoom>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomList', $pb.PbFieldType.PM, protoName: 'RoomList', subBuilder: LobbyRoom.create)
    ..hasRequiredFields = false
  ;

  AskRoomList_Response._() : super();
  factory AskRoomList_Response({
    $core.int? returnCode,
    $core.String? returnMsg,
    $core.Iterable<LobbyRoom>? roomList,
  }) {
    final _result = create();
    if (returnCode != null) {
      _result.returnCode = returnCode;
    }
    if (returnMsg != null) {
      _result.returnMsg = returnMsg;
    }
    if (roomList != null) {
      _result.roomList.addAll(roomList);
    }
    return _result;
  }
  factory AskRoomList_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AskRoomList_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AskRoomList_Response clone() => AskRoomList_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AskRoomList_Response copyWith(void Function(AskRoomList_Response) updates) => super.copyWith((message) => updates(message as AskRoomList_Response)) as AskRoomList_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AskRoomList_Response create() => AskRoomList_Response._();
  AskRoomList_Response createEmptyInstance() => create();
  static $pb.PbList<AskRoomList_Response> createRepeated() => $pb.PbList<AskRoomList_Response>();
  @$core.pragma('dart2js:noInline')
  static AskRoomList_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AskRoomList_Response>(create);
  static AskRoomList_Response? _defaultInstance;

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
  $core.List<LobbyRoom> get roomList => $_getList(2);
}

class RoomConnetioninfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoomConnetioninfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IP', protoName: 'IP')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Port', protoName: 'Port')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomId', protoName: 'RoomId')
    ..hasRequiredFields = false
  ;

  RoomConnetioninfo._() : super();
  factory RoomConnetioninfo({
    $core.String? iP,
    $core.String? port,
    $core.String? roomId,
  }) {
    final _result = create();
    if (iP != null) {
      _result.iP = iP;
    }
    if (port != null) {
      _result.port = port;
    }
    if (roomId != null) {
      _result.roomId = roomId;
    }
    return _result;
  }
  factory RoomConnetioninfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomConnetioninfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomConnetioninfo clone() => RoomConnetioninfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomConnetioninfo copyWith(void Function(RoomConnetioninfo) updates) => super.copyWith((message) => updates(message as RoomConnetioninfo)) as RoomConnetioninfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomConnetioninfo create() => RoomConnetioninfo._();
  RoomConnetioninfo createEmptyInstance() => create();
  static $pb.PbList<RoomConnetioninfo> createRepeated() => $pb.PbList<RoomConnetioninfo>();
  @$core.pragma('dart2js:noInline')
  static RoomConnetioninfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomConnetioninfo>(create);
  static RoomConnetioninfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iP => $_getSZ(0);
  @$pb.TagNumber(1)
  set iP($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIP() => $_has(0);
  @$pb.TagNumber(1)
  void clearIP() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get port => $_getSZ(1);
  @$pb.TagNumber(2)
  set port($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get roomId => $_getSZ(2);
  @$pb.TagNumber(3)
  set roomId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => clearField(3);
}

class AskJoinRoom_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AskJoinRoom_Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnCode', $pb.PbFieldType.O3, protoName: 'ReturnCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnMsg', protoName: 'ReturnMsg')
    ..aOM<RoomConnetioninfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomInfo', protoName: 'RoomInfo', subBuilder: RoomConnetioninfo.create)
    ..hasRequiredFields = false
  ;

  AskJoinRoom_Response._() : super();
  factory AskJoinRoom_Response({
    $core.int? returnCode,
    $core.String? returnMsg,
    RoomConnetioninfo? roomInfo,
  }) {
    final _result = create();
    if (returnCode != null) {
      _result.returnCode = returnCode;
    }
    if (returnMsg != null) {
      _result.returnMsg = returnMsg;
    }
    if (roomInfo != null) {
      _result.roomInfo = roomInfo;
    }
    return _result;
  }
  factory AskJoinRoom_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AskJoinRoom_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AskJoinRoom_Response clone() => AskJoinRoom_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AskJoinRoom_Response copyWith(void Function(AskJoinRoom_Response) updates) => super.copyWith((message) => updates(message as AskJoinRoom_Response)) as AskJoinRoom_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AskJoinRoom_Response create() => AskJoinRoom_Response._();
  AskJoinRoom_Response createEmptyInstance() => create();
  static $pb.PbList<AskJoinRoom_Response> createRepeated() => $pb.PbList<AskJoinRoom_Response>();
  @$core.pragma('dart2js:noInline')
  static AskJoinRoom_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AskJoinRoom_Response>(create);
  static AskJoinRoom_Response? _defaultInstance;

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
  RoomConnetioninfo get roomInfo => $_getN(2);
  @$pb.TagNumber(3)
  set roomInfo(RoomConnetioninfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomInfo() => clearField(3);
  @$pb.TagNumber(3)
  RoomConnetioninfo ensureRoomInfo() => $_ensure(2);
}

class AskCreateRoom_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AskCreateRoom_Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lobby'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnCode', $pb.PbFieldType.O3, protoName: 'ReturnCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReturnMsg', protoName: 'ReturnMsg')
    ..aOM<RoomConnetioninfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RoomInfo', protoName: 'RoomInfo', subBuilder: RoomConnetioninfo.create)
    ..hasRequiredFields = false
  ;

  AskCreateRoom_Response._() : super();
  factory AskCreateRoom_Response({
    $core.int? returnCode,
    $core.String? returnMsg,
    RoomConnetioninfo? roomInfo,
  }) {
    final _result = create();
    if (returnCode != null) {
      _result.returnCode = returnCode;
    }
    if (returnMsg != null) {
      _result.returnMsg = returnMsg;
    }
    if (roomInfo != null) {
      _result.roomInfo = roomInfo;
    }
    return _result;
  }
  factory AskCreateRoom_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AskCreateRoom_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AskCreateRoom_Response clone() => AskCreateRoom_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AskCreateRoom_Response copyWith(void Function(AskCreateRoom_Response) updates) => super.copyWith((message) => updates(message as AskCreateRoom_Response)) as AskCreateRoom_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AskCreateRoom_Response create() => AskCreateRoom_Response._();
  AskCreateRoom_Response createEmptyInstance() => create();
  static $pb.PbList<AskCreateRoom_Response> createRepeated() => $pb.PbList<AskCreateRoom_Response>();
  @$core.pragma('dart2js:noInline')
  static AskCreateRoom_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AskCreateRoom_Response>(create);
  static AskCreateRoom_Response? _defaultInstance;

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
  RoomConnetioninfo get roomInfo => $_getN(2);
  @$pb.TagNumber(3)
  set roomInfo(RoomConnetioninfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomInfo() => clearField(3);
  @$pb.TagNumber(3)
  RoomConnetioninfo ensureRoomInfo() => $_ensure(2);
}

