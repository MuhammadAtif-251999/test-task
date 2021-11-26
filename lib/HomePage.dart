import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:testtask/Home.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text(
          'Home Page'),
    ),
    Center(
      child: Text(
          'Search Page'),
    ),
    Center(child: MainPage()),
    Center(
      child: Text(
          'Chat Here'),
    ),
    Center(
      child: Text(
          'Profile'),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(height: 45,
            child: Image.asset('images/logo.png', fit: BoxFit.cover)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      endDrawer: new Drawer(
        child: new ListView(
          children: [
            // header
            new UserAccountsDrawerHeader(
              accountName: Text("Atif251999"),
              accountEmail: Text("Muhammadatif251999@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.teal),
            ),
            // Body
            InkWell(
              child: ListTile(
                title: Text("Levels"),
                leading: Icon(
                  Icons.stairs_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                title: Text("Workouts"),
                leading: Icon(
                  Icons.work,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                title: Text("Fee"),
                leading: Icon(
                  Icons.payment,
                  color: Colors.pink[100],
                ),
              ),
            ),
            Divider(),
            InkWell(
             child: ListTile(
                title: Text("info"),
                leading: Icon(
                  Icons.info,
                  color: Colors.teal[100],
                ),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                title: Text("Logout"),
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),

      body: tabs[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [

          SalomonBottomBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text("Home"),
            selectedColor: Colors.blue,
          ),

          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.blue,
          ),

          SalomonBottomBarItem(
            icon: Icon(Icons.add),
            title: Text("Add"),
            selectedColor: Colors.blue,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            title: Text("Chat"),
            selectedColor: Colors.blue,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.blue,
          ),
        ],
      ),

    );
  }



}
