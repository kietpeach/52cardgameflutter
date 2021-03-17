import 'package:cardgame/Model/hand.dart';
import 'package:cardgame/src/generated/lobby.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playing_cards/playing_cards.dart';
import 'package:multi_select_item/multi_select_item.dart';

class CardTable extends StatefulWidget {
  // final List<LobbyRoom> resultRoomList;
  // CardTable(this.resultRoomList);
  @override
  _CardTableState createState() => _CardTableState();
}

class _CardTableState extends State<CardTable> {
  MultiSelectController controller = new MultiSelectController();
  List<Widget> selectedCard = [];
  @override
  void initState() {
    super.initState();
    // mac dinh Xoay man hinh ngang
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('truyen ten room vao')),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(80)),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  width: 500,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Container(
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: handCard.length,
                            itemBuilder: (context, index) {
                              return Align(
                                widthFactor: 0.5,
                                alignment: Alignment.centerLeft,
                                child: InkWell(
                                    onTap: () {
                                      print(index);
                                    },
                                    child: handCard[index]),
                              );
                            }),
                      ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
