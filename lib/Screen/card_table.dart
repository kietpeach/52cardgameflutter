import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playing_cards/playing_cards.dart';

class CardTable extends StatefulWidget {
  @override
  _CardTableState createState() => _CardTableState();
}

class _CardTableState extends State<CardTable> {
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
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  width: 500,
                  child: Stack(
                    //alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        left: 0,
                        child: PlayingCardView(
                            card: PlayingCard(Suit.diamonds, CardValue.queen)),
                      ),
                      Positioned(
                        left: 70,
                        child: PlayingCardView(
                            card: PlayingCard(Suit.spades, CardValue.ace)),
                      ),
                      Positioned(
                        left: 140,
                        child: PlayingCardView(
                            card: PlayingCard(Suit.hearts, CardValue.ten)),
                      ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
