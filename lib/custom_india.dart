import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlDemo extends StatefulWidget {
  //
  LaunchUrlDemo({Key key}) : super(key: key);
  final String title = 'Custom and Culture';

  @override
  _LaunchUrlDemoState createState() => _LaunchUrlDemoState();
}

class _LaunchUrlDemoState extends State<LaunchUrlDemo> {
  //
  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl =
      'http://trebeki.info/en/the-indian-culture-traditions-religions-festivals-music-dance-clothing-food-movies/';

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(
                'https://as2.ftcdn.net/jpg/00/68/27/57/500_F_68275716_FE9wED8ocNrzKhiMT7yvJ7iboDFG8SBE.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: const Text('TAP ME!'),
                color: Colors.deepOrange,
                onPressed: () {
                  setState(() {
                    _launched = _launchInBrowser(_launchUrl);
                  });
                },
              ),
              FutureBuilder(
                future: _launched,
                builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return Text('Launched.');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
