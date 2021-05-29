import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'trendingindiadetail.dart';

final imagesList = [
  'https://images.thrillophilia.com/image/upload/s--HVUuonn0--/c_fill,f_auto,fl_strip_profile,h_600,q_auto,w_975/v1/images/photos/000/080/580/original/1463638120_kashmir_1.jpg.jpg?1463638120',
  'https://k6u8v6y8.stackpathcdn.com/blog/wp-content/uploads/2016/03/pangaong-lake.jpg',
  'https://k6u8v6y8.stackpathcdn.com/blog/wp-content/uploads/2016/03/Varanasi-River-Gange.jpg',
  'http://1.bp.blogspot.com/_W90V87w3sr8/TMbyfnBa7fI/AAAAAAAAAEE/c2Qk7tsdrw0/s1600/bengal+2.jpg',
  'https://fthmb.tqn.com/P-vBKShJXcsDT_5m-IF2xSMQ8q0=/3600x2400/filters:fill(auto,1)/GettyImages-522478216-5ab12c4e3de4230036949cee.jpg',
  'https://img.huffingtonpost.com/asset/57ee93621a0000de085b605e.jpeg?cache=8okO1tg6wy&ops=scalefit_720_noupscale',
  'http://www.telegraph.co.uk/content/dam/Travel/2016/April/india-kaziranga-xlarge.jpg',
  'https://www.holidify.com/images/bgImages/UDAIPUR.jpg',
  'https://www.tourmyindia.com/socialimg/rishikesh-tourism.jpg',
  'http://eweekendbreaks.com/wp-content/uploads/2015/07/Mysore.jpeg',
];

final colorList = [
  Color(0xFF00417E),
  Color(0xFFB29786),
  Color(0xFFC84916),
  Color(0xFF393F57),
  Color(0xFF4F943A),
  Color(0xFF59C5B6),
  Color(0xFF4B531A),
  Color(0xFFAE8291),
  Color(0xFF8F86B3),
  Color(0xFFFE3C64),
];

class Treindia extends StatefulWidget {
  @override
  _TreindiaState createState() => _TreindiaState();
}

class _TreindiaState extends State<Treindia> {
  int currentPage = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: colorList[currentPage],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 450.0,
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return itemBuilder(index);
                  },
                  controller: _pageController,
                  pageSnapping: true,
                  onPageChanged: _onPageChanged,
                  itemCount: 10,
                  physics: ClampingScrollPhysics(),
                ),
              ),
              _detailsBuilder(currentPage),
            ],
          )
        ],
      ),
    );
  }

  Widget _detailsBuilder(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
        }

        return Expanded(
          child: Transform.translate(
            offset: Offset(0, 100 + (-value * 100)),
            child: Opacity(
              opacity: value,
              child: Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text(
                        detailsList[index].title,
                        style: GoogleFonts.piedra(
                          textStyle: TextStyle(
                            color: Colors.black87,
                            letterSpacing: .5,
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        detailsList[index].description,
                        style: GoogleFonts.dancingScript(
                          textStyle: TextStyle(
                            color: Colors.black87,
                            letterSpacing: .5,
                            fontSize: 19,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        width: 80.0,
                        height: 5.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                        child: Text(
                          "Trending in India",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w900),
                        ),
                        color: Colors.transparent,
                        onPressed: () {
                          Navigator.pushNamed(context, '/First');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget itemBuilder(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
          return Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 10.0),
                height: Curves.easeIn.transform(value) * 600,
                child: child,
              ));
        } else {
          return Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 10.0),
                height:
                Curves.easeIn.transform(index == 0 ? value : value * 0.5) *
                    600,
                child: child,
              ));
        }
      },
      child: Material(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
            child: Image.network(
              imagesList[index],
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }

  _onPageChanged(int index) {
    setState(() {
      print(index);
      currentPage = index;
    });
  }
}
