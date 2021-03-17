import 'package:cardgame/Screen/sign_in.dart';
import 'package:flutter/material.dart';

import 'Screen/card.dart';
import 'Screen/card_table.dart';

//
void main() async {
  runApp(MyApp());
}

//
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
      //theme: ThemeData(primaryColor: Colors.brown[100]),
    );
  }
}
//
