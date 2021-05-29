import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFDB755C),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withOpacity(.90),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
      },
      items: [
        BottomNavigationBarItem(
          title: Text(
            'MyPlan',
            style: GoogleFonts.berkshireSwash(
              textStyle: TextStyle(
                color: Colors.black87,
                letterSpacing: .5,
                fontSize: 20,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          icon: IconButton(
            icon: Icon(Icons.event_note),
            color: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, '/myplan');
            },
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            'Explore',
            style: GoogleFonts.berkshireSwash(
              textStyle: TextStyle(
                color: Colors.black87,
                letterSpacing: .5,
                fontSize: 20,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          icon: IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, '/explore');
            },
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            'Suggestion',
            style: GoogleFonts.berkshireSwash(
              textStyle: TextStyle(
                color: Colors.black87,
                letterSpacing: .5,
                fontSize: 19,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          icon: IconButton(
            icon: Icon(Icons.notifications_active),
            color: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, '/sugg');
            },
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            'Currency',
            style: GoogleFonts.berkshireSwash(
              textStyle: TextStyle(
                color: Colors.black87,
                letterSpacing: .5,
                fontSize: 20,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          icon: IconButton(
            icon: Icon(Icons.attach_money),
            color: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, '/currency');
            },
          ),
        ),
      ],
    );
  }
}
