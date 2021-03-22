///
//  Generated code. Do not modify.
//  source: gametable.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'gametable.pb.dart' as $0;
export 'gametable.pb.dart';

class GameTableClient extends $grpc.Client {
  static final _$askCreateRoom =
      $grpc.ClientMethod<$0.AskCreateRoom_Request, $0.Empty_Response>(
          '/gametable.GameTable/AskCreateRoom',
          ($0.AskCreateRoom_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty_Response.fromBuffer(value));
  static final _$askJoinRoom =
      $grpc.ClientMethod<$0.String_Request, $0.Empty_Response>(
          '/gametable.GameTable/AskJoinRoom',
          ($0.String_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty_Response.fromBuffer(value));
  static final _$getRoomInfo =
      $grpc.ClientMethod<$0.String_Request, $0.GetRoomInfo_Response>(
          '/gametable.GameTable/GetRoomInfo',
          ($0.String_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetRoomInfo_Response.fromBuffer(value));

  GameTableClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty_Response> askCreateRoom(
      $0.AskCreateRoom_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$askCreateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty_Response> askJoinRoom($0.String_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$askJoinRoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRoomInfo_Response> getRoomInfo(
      $0.String_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomInfo, request, options: options);
  }
}

abstract class GameTableServiceBase extends $grpc.Service {
  $core.String get $name => 'gametable.GameTable';

  GameTableServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AskCreateRoom_Request, $0.Empty_Response>(
        'AskCreateRoom',
        askCreateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AskCreateRoom_Request.fromBuffer(value),
        ($0.Empty_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.String_Request, $0.Empty_Response>(
        'AskJoinRoom',
        askJoinRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.String_Request.fromBuffer(value),
        ($0.Empty_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.String_Request, $0.GetRoomInfo_Response>(
        'GetRoomInfo',
        getRoomInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.String_Request.fromBuffer(value),
        ($0.GetRoomInfo_Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty_Response> askCreateRoom_Pre($grpc.ServiceCall call,
      $async.Future<$0.AskCreateRoom_Request> request) async {
    return askCreateRoom(call, await request);
  }

  $async.Future<$0.Empty_Response> askJoinRoom_Pre(
      $grpc.ServiceCall call, $async.Future<$0.String_Request> request) async {
    return askJoinRoom(call, await request);
  }

  $async.Future<$0.GetRoomInfo_Response> getRoomInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.String_Request> request) async {
    return getRoomInfo(call, await request);
  }

  $async.Future<$0.Empty_Response> askCreateRoom(
      $grpc.ServiceCall call, $0.AskCreateRoom_Request request);
  $async.Future<$0.Empty_Response> askJoinRoom(
      $grpc.ServiceCall call, $0.String_Request request);
  $async.Future<$0.GetRoomInfo_Response> getRoomInfo(
      $grpc.ServiceCall call, $0.String_Request request);
}
