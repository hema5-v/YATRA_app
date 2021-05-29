import 'package:flutter/material.dart';
import 'eventindiadetail.dart';
import 'package:google_fonts/google_fonts.dart';

final imagesList = [
  'https://researchandexploration.files.wordpress.com/2016/08/jallikattu.jpg',
  'https://easyvivek.files.wordpress.com/2011/01/jodhpur-park-durga-puja2009.jpg',
  'http://letsgokerala.in/wp-content/uploads/2015/11/Boat-Race.jpg',
  'https://craftytalks.craftsventure.com/wp-content/uploads/2019/04/Rajasthan-puppets-colour-1024x678-750x410.jpg',
  'http://www.hotelbuttercup.com/wp-content/uploads/2016/09/3para.jpg',
  'https://www.indianholiday.com/pictures/tourgallery/538/ladakh-markha-valley-trek-with-stok-kangri-2969.jpg',
  'https://www.dadaboudir.com/wp-content/uploads/2016/11/river-rafting_Rishikeh.jpg',
  'http://www.travelkhana.com/tkblog/wp-content/uploads/sites/2/2015/12/Konark-festival.jpg',
  'https://live.staticflickr.com/3560/3295733180_4de984281d_b.jpg',
  'https://cities2travel.files.wordpress.com/2013/03/kumbh-mela-2013-in-allahabad.jpg',
];

final colorList = [
  Color(0xFFB8A388),
  Color(0xFFDF8709),
  Color(0xFF476A92),
  Color(0xFFEB865C),
  Color(0xFFE4E0F9),
  Color(0xFF7A7579),
  Color(0xFFAA6351),
  Color(0xFFF3C124),
  Color(0xFF878190),
  Color(0xFFFFF2AE),
];

class Evindia extends StatefulWidget {
  @override
  _EvindiaState createState() => _EvindiaState();
}

class _EvindiaState extends State<Evindia> {
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
                          "Events in India",
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
