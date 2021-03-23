import 'package:cardgame/Screen/card_table.dart';
import 'package:cardgame/shared/loading.dart';
import 'package:cardgame/src/generated/gametable.pbgrpc.dart';
import 'package:cardgame/src/generated/lobby.pb.dart' as lobby;
import 'package:cardgame/src/generated/gametable.pb.dart' as table;
import 'package:cardgame/src/generated/lobby.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class LobbyList extends StatefulWidget {
  @override
  _LobbyListState createState() => _LobbyListState();
}

class _LobbyListState extends State<LobbyList> {
  //
  List<LobbyRoom> resultRoomList;
  LobbyRoom resultRoom;
  int returnCodeCreateLobby;
  int returnCodeJoinLobby;
  String resultCreateLobby;
  // TODO chưa làm Search tìm tên room
  List<LobbyRoom> filterRoomList;
  //Tạo cỗng gọi gRPC
  //Cỗng gọi gametable:
  GameTableClient clientGameTable = GameTableClient(ClientChannel(
      "192.168.112.99",
      port: 5002,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure())));
  //Cỗng gọi Lobby:
  LobbyClient clientLobby = LobbyClient(ClientChannel("192.168.112.99",
      //LobbyClient client = LobbyClient(ClientChannel("192.168.0.3",
      port: 5001,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure())));
  // Hiển thị list lobby
  Future<int> getReturnCodeAskRoomList() async {
    var response = await clientLobby.askRoomList(new Empty_Request());
    print('return code của AskRoomList: ${response.returnCode}');
    return response.returnCode;
  }

  //
  Future<List<LobbyRoom>> getLobby() async {
    var response = await clientLobby.askRoomList(new Empty_Request());
    resultRoomList = response.roomList.toList();
    print('Đã tìm thấy ${resultRoomList.length} room.');
    print(resultRoomList);
    return resultRoomList;
  }

  // Tạo lobby
  Future<int> getReturnCodeCreateLobby() async {
    var response =
        await clientLobby.askCreateRoom(new lobby.AskCreateRoom_Request(
      betAmount: 1300,
      currencyType: 1,
    ));
    returnCodeCreateLobby = response.returnCode;
    resultCreateLobby = response.roomInfo.roomId.toString();
    print(
        'return code của AskCreateRoom: ${response.returnCode} return msg: ${response.returnMsg}');
    print('Đã tạo lobby có ${response.roomInfo}');
    return returnCodeCreateLobby;
  }

  // Update list lobby
  Future<int> updateLobby() async {
    var response =
        await clientLobby.updateRoomList(new UpdateRoomList_Request());
    print('return code cua update ${response.returnCode}');
    return response.returnCode;
  }

  //Join lobby from lobby
  Future<int> getAskJoinRoomLobby(int index) async {
    var response = await clientLobby.askJoinRoom(
        new lobby.AskJoinRoom_Request(roomId: resultRoomList[index].roomId));
    print('Đã chọn lobby: ${resultRoomList[index].roomId}');
    print(
        'return code cua join lobby ${response.returnCode} return msg:${response.returnMsg}');
    return response.returnCode;
  }

  // Join lobby from gametable
  Future<int> getAskJoinRoomTable() async {
    var response = await clientGameTable
        .askJoinRoom(new String_Request(stringInput: resultCreateLobby));
    returnCodeJoinLobby = response.returnCode;
    print(
        'return code cua join gametable ${response.returnCode}-return msg:${response.returnMsg}');
    return returnCodeJoinLobby;
  }

  //method filler ket qua search tim lobby
  searchTile(string) {
    setState(() {
      filterRoomList = resultRoomList
          .where((u) => (u.roomId.toLowerCase().contains(string.toLowerCase())))
          .toList();
    });
  }

//
  @override
  void initState() {
    super.initState();
    getLobby();
  }

//
  @override
  void dispose() {
    super.dispose();
  }

//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Choose a lobby'),
          centerTitle: true,
          elevation: 0,
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            setState(() {
              getLobby();
            });
          },
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            // Thanh search bar
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (string) => searchTile(string),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 30),
                    hintText: 'Search...',
                    hintStyle: TextStyle(fontSize: 17),
                    fillColor: Colors.grey[300],
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            // List room
            Expanded(
              child: FutureBuilder(
                  future: getReturnCodeAskRoomList(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.data == 200) {
                      return buildList();
                    } else {
                      return Loading();
                    }
                  }),
            ),
            //Button create room
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent)),
                child: Text('Create Lobby'),
                onPressed: () async {
                  await getReturnCodeCreateLobby();
                  if (returnCodeCreateLobby == 200) {
                    await getAskJoinRoomTable();
                    if (returnCodeJoinLobby == 200) {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => CardTable(
                                    value: resultCreateLobby,
                                  )));
                    }
                  }
                })
          ]),
        ));
  }

  buildList() {
    return ListView.builder(
      itemCount: resultRoomList.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              getAskJoinRoomLobby(index);
              // Navigator.push(
              //     context,
              //     new MaterialPageRoute(
              //         builder: (context) => CardTable(
              //             value: resultRoomList[index].roomId.toString())));
            },
            // avata của chủ host leading: ,
            subtitle:
                Text('Bet: ${resultRoomList[index].betAmount.toString()}'),
            title: Text('Lobby Name: ${resultRoomList[index].roomId}'),
          ),
        );
      },
    );
  }
}
