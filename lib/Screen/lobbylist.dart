import 'package:cardgame/Model/lobby_room.dart';
import 'package:flutter/material.dart';

class LobbyList extends StatefulWidget {
  @override
  _LobbyListState createState() => _LobbyListState();
}

class _LobbyListState extends State<LobbyList> {
  searchTile(string) {
    setState(() {
      filter = lobby
          .where((u) =>
              (u.playNameList.toLowerCase().contains(string.toLowerCase())))
          .toList();
    });
  }

  List<LobbyRoom> filter = [];
  List<LobbyRoom> lobby = [
    LobbyRoom(
        roomId: '123',
        playNameList: 'abc',
        currentMemberNum: 999,
        playerNumber: 333,
        currentType: 111,
        betAmount: 3213),
    LobbyRoom(
        roomId: '1234',
        playNameList: 'abcdddd',
        currentMemberNum: 9991,
        playerNumber: 3332,
        currentType: 1113,
        betAmount: 32131),
  ];
  @override
  void initState() {
    super.initState();
    setState(() {
      filter = lobby;
    });
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
            child: ListView.builder(
              itemCount: filter.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      //TODO nhay vao room game
                    },
                    title: Text(filter[index].playNameList),
                  ),
                );
              },
            ),
          ),
        ]));
  }
}
