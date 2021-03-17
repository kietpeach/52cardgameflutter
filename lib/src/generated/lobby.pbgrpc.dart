///
//  Generated code. Do not modify.
//  source: lobby.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'lobby.pb.dart' as $0;
export 'lobby.pb.dart';

class LobbyClient extends $grpc.Client {
  static final _$logIn =
      $grpc.ClientMethod<$0.LogIn_Request, $0.LogIn_Response>(
          '/lobby.Lobby/LogIn',
          ($0.LogIn_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.LogIn_Response.fromBuffer(value));
  static final _$askRoomList =
      $grpc.ClientMethod<$0.Empty_Request, $0.AskRoomList_Response>(
          '/lobby.Lobby/AskRoomList',
          ($0.Empty_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AskRoomList_Response.fromBuffer(value));
  static final _$askJoinRoom =
      $grpc.ClientMethod<$0.AskJoinRoom_Request, $0.AskJoinRoom_Response>(
          '/lobby.Lobby/AskJoinRoom',
          ($0.AskJoinRoom_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AskJoinRoom_Response.fromBuffer(value));
  static final _$askCreateRoom =
      $grpc.ClientMethod<$0.AskCreateRoom_Request, $0.AskCreateRoom_Response>(
          '/lobby.Lobby/AskCreateRoom',
          ($0.AskCreateRoom_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AskCreateRoom_Response.fromBuffer(value));
  static final _$updateRoomList =
      $grpc.ClientMethod<$0.UpdateRoomList_Request, $0.Empty_Response>(
          '/lobby.Lobby/UpdateRoomList',
          ($0.UpdateRoomList_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty_Response.fromBuffer(value));

  LobbyClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.LogIn_Response> logIn($0.LogIn_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logIn, request, options: options);
  }

  $grpc.ResponseFuture<$0.AskRoomList_Response> askRoomList(
      $0.Empty_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$askRoomList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AskJoinRoom_Response> askJoinRoom(
      $0.AskJoinRoom_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$askJoinRoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.AskCreateRoom_Response> askCreateRoom(
      $0.AskCreateRoom_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$askCreateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty_Response> updateRoomList(
      $0.UpdateRoomList_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoomList, request, options: options);
  }
}

abstract class LobbyServiceBase extends $grpc.Service {
  $core.String get $name => 'lobby.Lobby';

  LobbyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LogIn_Request, $0.LogIn_Response>(
        'LogIn',
        logIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LogIn_Request.fromBuffer(value),
        ($0.LogIn_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty_Request, $0.AskRoomList_Response>(
        'AskRoomList',
        askRoomList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty_Request.fromBuffer(value),
        ($0.AskRoomList_Response value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AskJoinRoom_Request, $0.AskJoinRoom_Response>(
            'AskJoinRoom',
            askJoinRoom_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AskJoinRoom_Request.fromBuffer(value),
            ($0.AskJoinRoom_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AskCreateRoom_Request,
            $0.AskCreateRoom_Response>(
        'AskCreateRoom',
        askCreateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AskCreateRoom_Request.fromBuffer(value),
        ($0.AskCreateRoom_Response value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateRoomList_Request, $0.Empty_Response>(
            'UpdateRoomList',
            updateRoomList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateRoomList_Request.fromBuffer(value),
            ($0.Empty_Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.LogIn_Response> logIn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LogIn_Request> request) async {
    return logIn(call, await request);
  }

  $async.Future<$0.AskRoomList_Response> askRoomList_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty_Request> request) async {
    return askRoomList(call, await request);
  }

  $async.Future<$0.AskJoinRoom_Response> askJoinRoom_Pre($grpc.ServiceCall call,
      $async.Future<$0.AskJoinRoom_Request> request) async {
    return askJoinRoom(call, await request);
  }

  $async.Future<$0.AskCreateRoom_Response> askCreateRoom_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AskCreateRoom_Request> request) async {
    return askCreateRoom(call, await request);
  }

  $async.Future<$0.Empty_Response> updateRoomList_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateRoomList_Request> request) async {
    return updateRoomList(call, await request);
  }

  $async.Future<$0.LogIn_Response> logIn(
      $grpc.ServiceCall call, $0.LogIn_Request request);
  $async.Future<$0.AskRoomList_Response> askRoomList(
      $grpc.ServiceCall call, $0.Empty_Request request);
  $async.Future<$0.AskJoinRoom_Response> askJoinRoom(
      $grpc.ServiceCall call, $0.AskJoinRoom_Request request);
  $async.Future<$0.AskCreateRoom_Response> askCreateRoom(
      $grpc.ServiceCall call, $0.AskCreateRoom_Request request);
  $async.Future<$0.Empty_Response> updateRoomList(
      $grpc.ServiceCall call, $0.UpdateRoomList_Request request);
}
