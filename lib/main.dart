import 'package:flutter/material.dart';

import 'package:emedclub/widget/home_page.dart' show HomePage;
import 'package:emedclub/widget/hotspot_page.dart' show HotPage;
import 'package:emedclub/widget/list_page.dart' show ListPage;
import 'package:emedclub/widget/me_page.dart' show MePage;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Emedclub News',
        // theme: new ThemeData(primarySwatch: Colors.black),
        home: new BottomNavBarPage()
    );
  }
}

/// BottomNavigationBar Page Definition
class BottomNavBarPage extends StatefulWidget {

  @override
  State createState() {
    return new _BottomNavBarPageState();
  }
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  final _bottomNavColor = Colors.blue;
  List<Widget> pages = new List<Widget>();

  int _currentIndex = 0;


  @override
  void initState() {
    super.initState();
    pages..add(HomePage())..add(ListPage())..add(HotPage())..add(MePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: _bottomNavColor),
              title: Text('Home', style: TextStyle(color: _bottomNavColor))),
          BottomNavigationBarItem(icon: Icon(Icons.list, color: _bottomNavColor),
              title: Text('List', style: TextStyle(color: _bottomNavColor))),
          BottomNavigationBarItem(icon: Icon(Icons.whatshot, color: _bottomNavColor),
              title: Text('HotSpot', style: TextStyle(color: _bottomNavColor))),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: _bottomNavColor),
              title: Text('Me', style: TextStyle(color: _bottomNavColor)))
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        }
      )
    );
  }
}


