import 'package:yatra_app/Heritage_india.dart';

import 'exploreindia.dart';
import 'Login_screen.dart';
import 'suggestions_main.dart';
import 'package:flutter/material.dart';
import 'events_india.dart';
import 'shopping_india.dart';
import 'trending_india.dart';
import 'screen1.dart';
import 'Screen0.dart';
import 'Screen 2.dart';
import "myplan_main.dart";
import 'bitmain.dart';
import 'package:yatra_app/suggestions_main.dart';
import 'package:yatra_app/Login_screen.dart';
import 'Registration_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Screen0(),
        '/login': (context) => LoginScreen(),
        '/reg': (context) => Rgistration(),
        '/First': (context) => Screen1(),
        '/Second': (context) => Screen2(),
        '/heritage': (context) => Hndia(),
        '/Events': (context) => Eindia(),
        '/Shopping': (context) => Sindia(),
        '/trending': (context) => Tindia(),
        '/myplan': (context) => Myplan(),
        '/currency': (context) => Bitcoin(),
        '/sugg': (context) => Mysugg(),
        '/explore': (context) => Exploreindia(),
      },
    );
  }
}
