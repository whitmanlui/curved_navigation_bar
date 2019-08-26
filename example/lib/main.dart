import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  int a = 0;

  @override
  Widget build(BuildContext context) {
    print(Device.get().isIphoneX);
    return Scaffold(

        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.blueAccent,
              child: Center(
                child: InkWell(child: Text("click me la"), onTap: (){
                  /* final CurvedNavigationBarState fState = bottomNavigationKey.currentState;
                  fState.setPage(2); */
                  setState(() {
                    a = a +1;
                  });
                  print(a);
                },),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: CurvedNavigationBar(
                  key: bottomNavigationKey,
                  backgroundColor: Colors.transparent,
                  buttonBackgroundColor: Color(0xFFBD202F),
                  color: Color(0xFFFAFAFA),
                  activeColor: Colors.white,
                  inactiveColor: Color(0xFF7C7C7C),
                  index: 0,
                  items:<TabData>[
                    TabData(iconData: Icons.assignment, title: "", badge: 55 ),
                    TabData(iconData: Icons.calendar_today, title: "", badge: 80 ),
                    TabData(iconData: Icons.home, title: "", badge: 3 ),
                    TabData(iconData: Icons.shopping_cart, title: "", badge: 30 ),
                    TabData(iconData: Icons.person, title: "", badge: a ),
                  ],
                  onTap: (index) {
                    setState(() {
                      _page = index;
                    });
                  },
                ),
            )
          ]
        ),
    );
  }
}
