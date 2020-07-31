import 'package:flutter/material.dart';

// Screens
import 'screens/myhomepage.dart';
import 'screens/account.dart';
import 'screens/settings.dart';
import 'screens/about.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Coffee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      // Routes for the app
      routes: {
        '/': (context) => MyHomePage(title: 'People Dashboard'),
        '/account': (context) => AccountPage(),
        '/settings': (context) => Settings(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
