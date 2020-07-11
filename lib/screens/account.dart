// Account page

import 'package:flutter/material.dart';
import '../widgets/bottomnav.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Info'),
      ),
      bottomNavigationBar: SharedBottomNav(),
      body: Center(
        child: Text('Account info'),
      ),
    );
  }
}
