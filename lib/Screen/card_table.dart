import 'package:cardgame/Model/hand.dart';
import 'package:cardgame/src/generated/lobby.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playing_cards/playing_cards.dart';
import 'package:multi_select_item/multi_select_item.dart';

class CardTable extends StatefulWidget {
  String roomID;
  int betAmount;
  CardTable({this.roomID, this.betAmount});
  @override
  _CardTableState createState() => _CardTableState(roomID, betAmount);
}

class _CardTableState extends State<CardTable> {
  //
  String roomID;
  int betAmount;
  _CardTableState(this.roomID, this.betAmount);
  List<bool> up = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<double> x = [
    -0.6,
    -0.5,
    -0.4,
    -0.3,
    -0.2,
    -0.1,
    0,
    0.1,
    0.2,
    0.3,
    0.4,
    0.5,
    0.6
  ];
  List<double> y = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
  bool _disableCard = false;
  //
  void onTapUp(int index) {
    setState(() {
      up[index] = !up[index];
    });
  }

//
  void hitCard(index) {
    setState(() {
      if (up[index]) {
        x[index] = 0;
        y[index] = 0;
      }
    });
  }

  //
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
        appBar: AppBar(title: Text('ID:$roomID Bet:$betAmount')),
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/sc.jpg'), fit: BoxFit.fill)),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
                //child: Container(color: Colors.red,),
              ),
              //board
              Expanded(
                child: Stack(
                  children: [
                    for (int i = 0; i < 13; i++)
                      AnimatedAlign(
                        duration: Duration(milliseconds: 100),
                        alignment: Alignment(x[i], up[i] ? (y[i] - 0.1) : y[i]),
                        child: SizedBox(
                          height: 80,
                          width: 60,
                          child: GestureDetector(
                            onTap: () {
                              onTapUp(i);
                            },
                            child: Container(
                              child: handCard[i],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Skip')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          handCard = handCard.reversed.toList();
                        });
                      },
                      child: Text('Sort')),
                  ElevatedButton(
                      onPressed: () {
                        for (int i = 0; i < 13; i++)
                          setState(() {
                            if (up[i]) {
                              x[i] = 0;
                              y[i] = 0;
                            }
                          });
                      },
                      child: Text('Hit')),
                ],
              )
            ],
          ),
        ));
  }
}
