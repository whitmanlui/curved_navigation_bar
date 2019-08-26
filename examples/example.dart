import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 75.0,
          items: <TabData>[
            TabData(iconData: Icons.add, title: "Article_tab", badge: 20 ),
            TabData(iconData: Icons.list, title: "journey_tab", badge: 0),
            TabData(iconData: Icons.compare_arrows, title: "tour_tab", badge: 110 ),
            TabData(iconData: Icons.call_split, title: "cart_tab", badge: 32),
            TabData(iconData: Icons.perm_identity, title: "me_tab", badge: 3),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Text(_page.toString(), textScaleFactor: 10.0),
          ),
        ));
  }
}
