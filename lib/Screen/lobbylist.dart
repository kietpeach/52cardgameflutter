import 'package:cardgame/Screen/card_table.dart';
import 'package:cardgame/shared/loading.dart';
import 'package:cardgame/src/generated/lobby.pb.dart';
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
  int resultReturnCode;
  List<LobbyRoom> filterRoomList;
  //tao cong goi grpc
  LobbyClient client = LobbyClient(ClientChannel("192.168.112.99",
      port: 5001,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure())));
  //
  Future<int> getReturnCode() async {
    var response = await client.askRoomList(new Empty_Request());
    resultReturnCode = response.returnCode;
    print('return code cua lobby $resultReturnCode');
    return resultReturnCode;
  }

  //
  Future<List<LobbyRoom>> getLobby() async {
    var response = await client.askRoomList(new Empty_Request());
    resultRoomList = response.roomList.toList();
    print('Đã tìm thấy ${resultRoomList.length} room.');
    return resultRoomList;
  }

  //method filler ket qua search tim lobby
  searchTile(string) {
    setState(() {
      filterRoomList = resultRoomList
          .where((u) => (u.roomId.toLowerCase().contains(string.toLowerCase())))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    getLobby();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
        body: Column(mainAxisSize: MainAxisSize.max, children: [
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
          Expanded(
            child: FutureBuilder(
                future: getReturnCode(),
                builder: (BuildContext contex, AsyncSnapshot snapshot) {
                  if (snapshot.data == 200) {
                    return buildList();
                  } else {
                    return Loading();
                  }
                }),
          )
        ]));
  }

  buildList() {
    return ListView.builder(
      itemCount: resultRoomList.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => CardTable()));
            },
            // avata của chủ host leading: ,
            subtitle: Text('Bet: ${resultRoomList[index].betAmount.toString()}'),
            title: Text('Lobby Name: ${resultRoomList[index].roomId}'),
          ),
        );
      },
    );
  }
}
