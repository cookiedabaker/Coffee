// Settings Page

import 'package:flutter/material.dart';
import '../widgets/bottomnav.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      bottomNavigationBar: SharedBottomNav(),
      body: Center(
        child: Text(
            'Settings list goes here'
        ),

      ),
    );
  }
}
