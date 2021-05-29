import 'heritageindia_list.dart';
import 'package:flutter/material.dart';
class Hndia extends StatefulWidget {
  @override
  _HndiaState createState() => _HndiaState();
}

class _HndiaState extends State<Hndia> {
  List<Widget> itemsData = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CityExplorerPage(),
    );
  }
}
