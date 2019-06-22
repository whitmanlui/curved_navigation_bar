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
          activeColor: Colors.red,
          inactiveColor: Colors.black,
          index: 0,
          items:<TabData>[
            TabData(iconData: Icons.add, title: "add", badge: 3),
            TabData(iconData: Icons.list, title: "list", badge: 2),
            TabData(iconData: Icons.compare_arrows, title: "compare_arrows", badge: 2),
            TabData(iconData: Icons.call_split, title: "call_split", badge: 3),
            TabData(iconData: Icons.perm_identity, title: "perm_identity", badge: 99),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.yellowAccent,
          backgroundColor: Colors.blueAccent,
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
