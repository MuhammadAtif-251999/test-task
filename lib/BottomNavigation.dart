import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


class BottomNavigation extends StatefulWidget {


  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [

            SalomonBottomBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text(""),
              selectedColor: Colors.blue,
            ),

            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text(""),
              selectedColor: Colors.blue,
            ),

            SalomonBottomBarItem(
              icon: Icon(Icons.add),
              title: Text(""),
              selectedColor: Colors.blue,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              title: Text(""),
              selectedColor: Colors.blue,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text(""),
              selectedColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}