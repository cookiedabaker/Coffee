import 'package:flutter/material.dart';

// Import firebase plugins
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Screens
import 'pages/myhomepage.dart';
import 'pages/account.dart';
import 'pages/settings.dart';
import 'pages/about.dart';
import 'pages/contacts.dart';

void main() => runApp(MainWrapper());

class MainWrapper extends StatefulWidget {
  @override
  _MainWrapperState createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  // ----- FlutterFire init stuff ---------------------------------------------
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch(e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  // ----- Selected pages indexes correlated to the BottomNavBar --------------
  int selectedPage = 0;

  // Run selected page in scaffold's 'body'. returns stateful Widgets
  final _pageOptions = [
    MyHomePage(),
    Contacts(),
    Account(),
    Settings(),
  ];

  // putting title in app when switching pages. correlates with '_pageOptions'
  final _pageTitles = [
    'Project Coffee',
    'My Contacts',
    'My Account',
    'Settings',
  ];

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Coffee',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(_pageTitles[selectedPage]),
        ),
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
