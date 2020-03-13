import 'package:flutter/material.dart';
import 'package:talk_flutter/pages/intro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff2980b9),
        fontFamily: "BalooChettan"
      ),
      home: IntroPage(),
    );
  }
}