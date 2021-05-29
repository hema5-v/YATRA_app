import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'eventindia_list.dart';

class Eindia extends StatefulWidget {
  @override
  _EindiaState createState() => _EindiaState();
}

class _EindiaState extends State<Eindia> {
  List<Widget> itemsData = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Evindia(),
    );
  }
}
