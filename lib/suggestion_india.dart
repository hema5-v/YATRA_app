import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:google_fonts/google_fonts.dart';

class Sugindi extends StatefulWidget {
  @override
  _SugindiState createState() => _SugindiState();
}

class _SugindiState extends State<Sugindi> {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: Text('Suggestions'),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.customtravelsolutions.com/wp-content/uploads/2016/02/bigstock-Tourist-Planning-Vacation-Usin-174664333.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                height: 300.0,
                width: 400.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.white,
                    width: 8,
                  ),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Text(
                  'Grab the advantage of the wide exclusive experience in your journey!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ribeye(
                    textStyle: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) => FabCircularMenu(
          key: fabKey,
          // Cannot be `Alignment.center`
          alignment: Alignment.bottomRight,
          ringColor: Colors.black,
          ringDiameter: 500.0,
          ringWidth: 150.0,
          fabSize: 64.0,
          fabElevation: 8.0,
          fabIconBorder: CircleBorder(),
          // Also can use specific color based on wether
          // the menu is open or not:
          // fabOpenColor: Colors.white
          // fabCloseColor: Colors.white
          // These properties take precedence over fabColor
          fabColor: Colors.black,
          fabOpenIcon: Icon(Icons.menu, color: primaryColor),
          fabCloseIcon: Icon(Icons.close, color: primaryColor),
          fabMargin: const EdgeInsets.all(16.0),
          animationDuration: const Duration(milliseconds: 800),
          animationCurve: Curves.easeInOutCirc,
//            onDisplayChange: (isOpen) {
//              _showSnackBar(
//                  context, "The menu is ${isOpen ? "open" : "closed"}");
//            },
          children: <Widget>[
            RawMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, 'visit');
              },
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.location_on, color: Colors.white),
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, 'url');
              },
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.location_city, color: Colors.white),
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, 'food');
              },
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.fastfood, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
