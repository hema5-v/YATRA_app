import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'plantask_list_provider.dart';
import 'planhome_screen.dart';

class Myplan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) {
        return Data();
      },
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}