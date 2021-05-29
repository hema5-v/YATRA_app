import 'package:flutter/material.dart';
import 'bitprice_screen.dart';

class Bitcoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF010040),
          scaffoldBackgroundColor: Color(0xFF010040)),
      home: PriceScreen(),
    );
  }
}
