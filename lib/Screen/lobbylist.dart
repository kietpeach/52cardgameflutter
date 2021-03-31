

import 'package:cardgame/Screen/card_table.dart';
import 'package:cardgame/shared/loading.dart';
import 'package:cardgame/src/generated/gametable.pbgrpc.dart';
import 'package:cardgame/src/generated/lobby.pb.dart' as lobby;
import 'package:cardgame/src/generated/gametable.pb.dart' as table;
import 'package:cardgame/src/generated/lobby.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class LobbyList extends StatefulWidget {
  // Biến truyền từ trang sign in
  final String ip;
  const LobbyList({Key key, this.ip}) : super(key: key);
  @override
  _LobbyListState createState() => _LobbyListState(ip);
}

class _LobbyListState extends State<LobbyList> {
  // Biến truyền từ trang sign in
  final String ip;
  _LobbyListState(this.ip);
  //
  List<LobbyRoom> resultRoomList;
  RoomConnetioninfo resultJoinRoom;
  int returnCodeCreateLobby;
  int returnCodeJoinFromTableWhenCreate;
  int returnCodeJoinFromTableWhenLobby;
  int returnCodeJoinFromLobby;
  String resultCreateLobby;
  List<LobbyRoom> filterRoomList;
  TextEditingController customBetAmount = TextEditingController();
  //
  GameTableClient clientGameTable;
  LobbyClient clientLobby;
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
    filterRoomList = response.roomList.toList();
    print('Đã tìm thấy ${resultRoomList.length} room.');
    print(resultRoomList);
    return resultRoomList;
  }

  // Tạo lobby
  Future<int> getReturnCodeCreateLobby() async {
    var response =
        await clientLobby.askCreateRoom(new lobby.AskCreateRoom_Request(
      //truyền mức cược từ texfield popup vào request create room
      betAmount: int.parse(customBetAmount.text),
      //currencyType: 1,
    ));
    returnCodeCreateLobby = response.returnCode;
    resultCreateLobby = response.roomInfo.roomId;
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
    returnCodeJoinFromLobby = response.returnCode;
    resultJoinRoom = response.roomInfo;
    print('Đã chọn lobby: ${resultRoomList[index].roomId}');
    print(
        'return code cua join lobby ${response.returnCode} return msg:${response.returnMsg}');
    return returnCodeJoinFromLobby;
  }

  // Join lobby from gametable
  Future<int> getAskJoinRoomTableWhenCreate() async {
    var response = await clientGameTable
        .askJoinRoom(new String_Request(stringInput: resultCreateLobby));
    returnCodeJoinFromTableWhenCreate = response.returnCode;
    print(
        'return code cua join gametable ${response.returnCode}-return msg:${response.returnMsg}');
    return returnCodeJoinFromTableWhenCreate;
  }

  Future<int> getAskJoinRoomTableWhenLobby() async {
    var response = await clientGameTable
        .askJoinRoom(new String_Request(stringInput: resultJoinRoom.roomId));
    returnCodeJoinFromTableWhenLobby = response.returnCode;
    return returnCodeJoinFromTableWhenLobby;
  }

  //method filler kết quả search tìm lobby theo tên hoặc giá cược
  searchTile(string) {
    setState(() {
      filterRoomList = resultRoomList
          .where((u) =>
              (u.roomId.toLowerCase().contains(string.toLowerCase()) ||
                  u.betAmount.toString().contains(string.toLowerCase())))
          .toList();
    });
  }

  //method popup bảng tạo lobby
  Future<int> createPopup(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Bet Amount'),
            content: TextField(
              decoration: InputDecoration(icon: Icon(Icons.attach_money)),
              keyboardType: TextInputType.number,
              controller: customBetAmount,
            ),
            actions: <Widget>[
              MaterialButton(
                  elevation: 5.0,
                  child: Text('Create'),
                  onPressed: () {
                    if (customBetAmount != null) {
                      Navigator.of(context)
                          .pop(int.parse(customBetAmount.text));
                      bool x = true; //TODO
                    }
                  })
            ],
          );
        });
  }

//
  @override
  void initState() {
    super.initState();
    //
    clientGameTable = GameTableClient(ClientChannel(ip,
        port: 5002,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    //
    clientLobby = LobbyClient(ClientChannel(ip,
        port: 5001,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
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
                    hintText: 'Search...(type lobby name or bet to find)',
                    hintStyle: TextStyle(fontSize: 17, color: Colors.grey),
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
                onPressed: () {
                  createPopup(context).then((onValue) async {
                    await getReturnCodeCreateLobby();
                    if (returnCodeCreateLobby == 200) {
                      await getAskJoinRoomTableWhenCreate();
                      if (returnCodeJoinFromTableWhenCreate == 200) {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => CardTable(
                                      roomID: resultCreateLobby,
                                      betAmount: onValue,
                                    )));
                      }
                    }
                  });
                })
          ]),
        ));
  }

  buildList() {
    return ListView.builder(
      itemCount: filterRoomList.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () async {
              await getAskJoinRoomLobby(index);
              if (returnCodeJoinFromLobby == 200) {
                print(resultJoinRoom.roomId);
                await getAskJoinRoomTableWhenLobby();
                if (returnCodeJoinFromTableWhenLobby == 200) {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => CardTable(
                                roomID: resultRoomList[index].roomId.toString(),
                                betAmount: resultRoomList[index].betAmount,
                              )));
                }
              }
            },
            // avata của chủ host leading: ,
            subtitle:
                Text('Bet: ${filterRoomList[index].betAmount.toString()}'),
            title: Text('Lobby Name: ${filterRoomList[index].roomId}'),
          ),
        );
      },
    );
  }
}
