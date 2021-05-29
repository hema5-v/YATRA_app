import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'shoppingindia_list.dart';

class Sindia extends StatefulWidget {
  @override
  _SindiaState createState() => _SindiaState();
}

class _SindiaState extends State<Sindia> {
  List<Widget> itemsData = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Shindia(),
    );
  }
}
