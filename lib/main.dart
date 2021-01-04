import 'package:flutter/material.dart';

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
  int selectedPage = 0;

  // Run selected page in scoffold's 'body'. returns stateful Widgets
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
