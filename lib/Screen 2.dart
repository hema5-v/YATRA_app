import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:navigation_demo_starter/screen1.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DASHBOARD')),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/2422265/pexels-photo-2422265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 415,
                  color: Colors.transparent,
                  child: Text(
                    'YATRA',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rye(
                      textStyle: TextStyle(
                        fontSize: 70.0,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 3.0,
                  width: 270,
                  color: Colors.white,
                ),
                Container(
                  height: 70,
                  width: 415,
                  color: Colors.transparent,
                  child: Text(
                    'Explore your Destiny!!!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    color: Colors.transparent,
                    height: 220,
                    width: 400,
                    child: Text(
                      ' Leverage the knowledge of thousands of travellers to experience an exclusive guided tour in an authentic manner across the globe. ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.permanentMarker(
                        textStyle: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/First');
        },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
