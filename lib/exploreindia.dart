import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class Exploreindia extends StatefulWidget {
  @override
  _ExploreindiaState createState() => _ExploreindiaState();
}

class _ExploreindiaState extends State<Exploreindia> {
  Future<void> _launched;

  String _launchUrl = 'https://www.google.co.in/maps/@21.125498,81.914063,5z';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'http://3.bp.blogspot.com/-mfTtlghJ5Cw/Ue4rYr6oHeI/AAAAAAAANGM/nFK-yH5QW0I/s1600/beautiful+valley+hd+wallpapers+(7).jpeg'),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 180,
                  width: 415,
                  color: Colors.transparent,
                  child: Text(
                    'TRAVEL FAR ENOUGH TO MEET YOUR SOUL',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.amaticaSc(
                      textStyle: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 3.0,
                  width: 270,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 200.0,
                  height: 200.0,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CupertinoColors.activeGreen,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.location_on),
                    color: Colors.red,
                    iconSize: 60.0,
                    onPressed: () {
                      setState(() {
                        _launched = _launchInBrowser(_launchUrl);
                      });
                    },
                  ),
                ),
                FutureBuilder(
                  future: _launched,
                  builder:
                      (BuildContext context, AsyncSnapshot<void> snapshot) {
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return Text('Launched.');
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
