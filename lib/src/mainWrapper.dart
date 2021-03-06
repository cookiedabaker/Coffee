// Main wrapper for pages

import 'package:flutter/material.dart';

// Pages
import '../pages/splashscreen.dart';
import '../pages/myhomepage.dart';
import '../pages/account.dart';
import '../pages/settings.dart';
import '../pages/about.dart';
import '../pages/contacts.dart';
import '../pages/travel.dart';

class MainWrapper extends StatefulWidget {
  @override
  _MainWrapperState createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {


  // ----- Selected pages indexes correlated to the BottomNavBar --------------
  int selectedPage = 0;

  // Run selected page in scaffold's 'body'. returns stateful Widgets
  final _pageOptions = [
    MyHomePage(),
    Contacts(),
    Travel(),
    Account(),
    Settings(),
  ];

  // putting title in app when switching pages. correlates with '_pageOptions'
  final _pageAppBars = [
    AppBar(
      title: Text('Project Coffee'),
    ),
    AppBar(
      title: Text('My Contacts'),
    ),
    AppBar(
      title: Text('Travel'),
      actions: [IconButton(icon: Icon(Icons.add), onPressed: null)],
    ),
    AppBar(
      title: Text('My Account'),
    ),
    AppBar(
      title: Text('Settings'),
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Coffee',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: _pageAppBars[selectedPage],
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplanemode_on_outlined),
              label: 'Travel',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: selectedPage,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ),
      ),
    );
  }
}
