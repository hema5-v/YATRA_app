import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'bottom_appbar.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDB755C),
        title: Text('INDIA'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40,
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image.network(
                    'https://th.bing.com/th/id/OIP.6InOAHaFMbzJWNquFD06ZwHaEK?pid=Api&rs=1%27',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: Align(
                          alignment: Alignment(0, -0.6),
                          child: Text(
                            'Welcome to India',
                            style: GoogleFonts.berkshireSwash(
                              textStyle: TextStyle(
                                color: Colors.white,
                                letterSpacing: .5,
                                fontSize: 52,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                color: Color(0xFF003954),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                                  margin:
                                  EdgeInsets.fromLTRB(10.0, 35.0, 10.0, 10.0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://indiatourismsite.com/images/theme-1a.jpg'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: new Stack(children: <Widget>[
                                    new Positioned(
                                      right: 0.0,
                                      top: 0.0,
                                      child: new Text(
                                        'Heritage',
                                        style: GoogleFonts.lato(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                    new Positioned(
                                      right: 0.0,
                                      bottom: 0.0,
                                      child: IconButton(
                                        icon: Icon(Icons.star),
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/heritage');
                                        },
                                      ),
                                    ),
                                  ]),
                                )),
                            Expanded(
                              child: Container(
                                margin:
                                EdgeInsets.fromLTRB(10.0, 35.0, 10.0, 10.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://www.india.com/wp-content/uploads/2018/08/Winter-adventure1.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: new Stack(children: <Widget>[
                                  new Positioned(
                                    right: 0.0,
                                    top: 0.0,
                                    child: new Text(
                                      'Trending',
                                      style: GoogleFonts.lato(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    right: 0.0,
                                    bottom: 0.0,
                                    child: IconButton(
                                      icon: Icon(Icons.star),
                                      color: Colors.white,
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/trending');
                                      },
                                    ),
                                  ),
                                ]),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 40.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://indianaugust.files.wordpress.com/2011/08/img_1218.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: new Stack(children: <Widget>[
                                      new Positioned(
                                        right: 0.0,
                                        top: 0.0,
                                        child: new Text(
                                          'Events',
                                          style: GoogleFonts.lato(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                      new Positioned(
                                        right: 0.0,
                                        bottom: 0.0,
                                        child: IconButton(
                                          icon: Icon(Icons.star),
                                          color: Colors.white,
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/Events');
                                          },
                                        ),
                                      ),
                                    ]),
                                  )),
                              Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 40.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://media2.s-nbcnews.com/j/newscms/2018_09/1321690/woman-shopping-street-bags-shop-stock-today-180302-tease_192a54ebcfb697d311d3bdfc82ad1151.fit-760w.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: new Stack(children: <Widget>[
                                      new Positioned(
                                        right: 0.0,
                                        top: 0.0,
                                        child: new Text(
                                          'Shopping',
                                          style: GoogleFonts.lato(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                      new Positioned(
                                        right: 0.0,
                                        bottom: 0.0,
                                        child: IconButton(
                                          icon: Icon(Icons.star),
                                          color: Colors.white,
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/Shopping');
                                          },
                                        ),
                                      ),
                                    ]),
                                  )),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
