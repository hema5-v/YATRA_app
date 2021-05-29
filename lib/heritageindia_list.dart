import 'package:flutter/material.dart';
import 'detail.dart';
import 'package:google_fonts/google_fonts.dart';

final imagesList = [
  'https://k6u8v6y8.stackpathcdn.com/blog/wp-content/uploads/2016/03/taj-mahal-agra.jpg',
  'https://www.holidify.com/blog/wp-content/uploads/2014/06/Khajuraho1.jpg',
  'https://howyoudoin.files.wordpress.com/2012/12/stone-chariot-hampi.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Qutub_Minar_764.jpg/220px-Qutub_Minar_764.jpg',
  'https://shahdeep50.files.wordpress.com/2013/05/bahais-monument-the-lotus-temple-delhi.jpg',
  'https://www.holidify.com/blog/wp-content/uploads/2014/06/Konark.jpg',
  'https://www.holidify.com/blog/wp-content/uploads/2014/06/Sanchi-Stupa1.jpg',
  'https://www.holidify.com/blog/wp-content/uploads/2014/06/Red-Fort.jpg',
  'https://www.holidify.com/blog/wp-content/uploads/2014/06/Fatehpur-Sikri.jpg',
  'https://www.holidify.com/blog/wp-content/uploads/2014/06/Ellora.jpg',
];

final colorList = [
  Colors.redAccent.shade100,
  Colors.blueAccent.shade100,
  Colors.amber.shade300,
  Colors.redAccent.shade100,
  Colors.blueAccent.shade100,
  Colors.amber.shade300,
  Colors.redAccent.shade100,
  Colors.blueAccent.shade100,
  Colors.amber.shade300,
  Colors.blueAccent.shade100,
];

class CityExplorerPage extends StatefulWidget {
  @override
  _CityExplorerPageState createState() => _CityExplorerPageState();
}

class _CityExplorerPageState extends State<CityExplorerPage> {
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
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        detailsList[index].description,
                        style: GoogleFonts.dancingScript(
                          textStyle: TextStyle(
                            color: Colors.black87,
                            letterSpacing: .5,
                            fontSize: 19,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
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
                          "Heritage of India",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w900),
                        ),
                        color: Colors.transparent,
                        onPressed: () {
                          Navigator.pop(context, '/First');
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
