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
  //
  bool _disableCard = false;
  bool _upCard = false;
  double _up;
  void _onTapUpCard(int index) {
    setState(() {
      _upCard = !_upCard;
      _up = 20;
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
        appBar: AppBar(title: Text('truyen ten room vao')),
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
                    AnimatedAlign(
                      duration: Duration(milliseconds: 100),
                      alignment: Alignment(-1,1),
                      child: SizedBox(
                        height: 80,
                        width: 60,
                        child: Container(
                          child: handCard[0],
                        ),
                      ),
                    ),
                     AnimatedAlign(
                      duration: Duration(milliseconds: 100),
                      alignment: Alignment(-0.9,1),
                      child: SizedBox(
                        height: 80,
                        width: 60,
                        child: Container(
                          child: handCard[1],
                        ),
                      ),
                    ),
                     AnimatedAlign(
                      duration: Duration(milliseconds: 100),
                      alignment: Alignment(-0.8,0.9),
                      child: SizedBox(
                        height: 80,
                        width: 60,
                        child: Container(
                          child: handCard[2],
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
                        if (_upCard) {
                          setState(() {
                            _up = 100;
                            _disableCard = true;
                          });
                        }
                      },
                      child: Text('Hit')),
                ],
              )
            ],
          ),
        ));
  }

  _buildListHand(int index) {
    return AnimatedPositioned(
        left: 0,
        duration: Duration(milliseconds: 100),
        bottom: _upCard ? _up : 0,
        child: AbsorbPointer(
          absorbing: _disableCard,
          child: InkWell(
              onTap: () {
                print('dasdas');
                _onTapUpCard(index);
              },
              child: Container(height: 80, width: 60, child: handCard[index])),
        ));
  }
}
