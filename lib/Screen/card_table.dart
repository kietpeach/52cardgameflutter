import 'package:cardgame/src/generated/lobby.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playing_cards/playing_cards.dart';

class CardTable extends StatefulWidget {
  // final List<LobbyRoom> resultRoomList;
  // CardTable(this.resultRoomList);
  @override
  _CardTableState createState() => _CardTableState();
}

class _CardTableState extends State<CardTable> {
  bool _upCard = true;

  double _onTapUpCard() {
    setState(() {
      _upCard = !_upCard;
    });
  }

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
                    alignment: Alignment.bottomLeft,
                    children: <Widget>[
                      ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 13,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                print(index);
                              },
                              child: Align(
                                widthFactor: 0.5,
                                alignment: Alignment.centerLeft,
                                child: PlayingCardView(
                                    card: PlayingCard(
                                        Suit.diamonds, CardValue.king)),
                              ),
                            );
                          }),
                      // AnimatedPositioned(
                      //   duration: Duration(milliseconds: 100),
                      //   bottom: _upCard ? 0 : 10,
                      //   left: 0,
                      //   child: GestureDetector(
                      //     onTap: () {
                      //       _onTapUpCard();
                      //     },
                      //     child: Container(
                      //       height: 100,
                      //       child: PlayingCardView(
                      //           card:
                      //               PlayingCard(Suit.diamonds, CardValue.king)),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
