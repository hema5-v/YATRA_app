import 'trendingindia_list.dart';
import 'package:flutter/material.dart';

class Tindia extends StatefulWidget {
  @override
  _TindiaState createState() => _TindiaState();
}

class _TindiaState extends State<Tindia> {
  List<Widget> itemsData = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Treindia(),
    );
  }
}

