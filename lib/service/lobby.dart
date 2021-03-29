import 'package:cardgame/src/generated/lobby.pb.dart';
import 'package:cardgame/src/generated/lobby.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class LobbyService {
  static Future<LogIn_Response> login(String host, int port) async {
    dynamic res;
    //TODO kết nối mạng
    //if (InternetInfo.getInternet()) {
    // String apiKey = 'Course.Catalog.Get_CourseClassification';
    final channel = getClientChannelByHost(host, port);
    if (channel != null) {
      final lobbyClient = LobbyClient(channel);

      try {
        LogIn_Request request = LogIn_Request();
        //TODO truyền UserCredential
        // request.user = new UserCredential.fromJson(
        //     UserAppConfig.userCredential.writeToJson());
        res = await lobbyClient.logIn(request);
      } catch (e) {
        print('Caught error: $e');
      } finally {
        channel?.shutdown();
      }
    }
    //
    return res;
  }

  //TODO hiện tại chỉ có 1 phương thức là host port sau này thêm thì tách func ra common
  static ClientChannel getClientChannelByHost(String pHost, int pPort) {
    ClientChannel clientChannel;
    try {
      clientChannel = new ClientChannel(pHost,
          port: pPort,
          options: ChannelOptions(
              idleTimeout: Duration(seconds: 5),
              connectionTimeout: Duration(seconds: 5),
              credentials: ChannelCredentials.insecure(authority: null)));
    } catch (ex) {}
    return clientChannel;
  }
}
