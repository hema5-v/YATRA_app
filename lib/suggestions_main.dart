import 'package:flutter/material.dart';
import 'custom_india.dart';
import 'suggestion_india.dart';
import 'places_visit_india.dart';
import 'food_india.dart';

class Mysugg extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'suggestion',
      routes: {
        'suggestion': (context) => Sugindi(),
        'url': (context) => LaunchUrlDemo(),
        'visit': (context) => Placesvisit(),
        'food': (context) => Foodindia(),
      },
    );
  }
}
