import 'package:flutter/material.dart';
import 'shoppingindiadetail.dart';
import 'package:google_fonts/google_fonts.dart';

final imagesList = [
  'https://upload.wikimedia.org/wikipedia/commons/6/60/Kohbar_of_Mithila.png',
  'https://i.pinimg.com/originals/58/7d/9d/587d9d91e9336828c42d61271acabd90.jpg',
  'http://www.pashminagolden.com/pashmina-cashmere/kashmiri-embroidered-shawl-01c.jpg',
  'https://i0.wp.com/sabhindime.com/wp-content/uploads/2018/05/sandalwood-powder-benefits.jpg',
  'https://indianbijou.files.wordpress.com/2015/01/indianbijou-jewellery-terracotta.jpg',
  'https://www.holidify.com/blog/wp-content/uploads/2015/10/7353954770_eb30ef1fb4_z.jpg',
  'https://th.bing.com/th/id/OIP.mepU79Mns33BsJnOZU5rTwHaFj?pid=Api&rs=1',
  'https://g3fashion.com/blog/wp-content/uploads/2017/09/org_20140923173947.jpg',
  'https://www.holidify.com/images/cmsuploads/compressed/3807092914_300eab065c_b_20170826111936.jpg',
];

final colorList = [
  Color(0xFFFAE3A8),
  Color(0xFF9A596D),
  Color(0xFFA47955),
  Color(0xFFB1B335),
  Color(0xFFD73823),
  Color(0xFF95645D),
  Color(0xFF70341C),
  Color(0xFFE8A1B0),
  Color(0xFF737D80),
];

class Shindia extends StatefulWidget {
  @override
  _ShindiaState createState() => _ShindiaState();
}

class _ShindiaState extends State<Shindia> {
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
                  itemCount: 9,
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
                          "Shopping in India",
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
