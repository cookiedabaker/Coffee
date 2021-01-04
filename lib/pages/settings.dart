// Settings Page

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(height: 30),
        Card(
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
//                image: DecorationImage(
//                  image: NetworkImage(avatars[1]),
//                  fit: BoxFit.cover,
//                ),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
            ),
            title: Text('NAME NAME'),
            subtitle: Text('Subtitle'),
          ),
        ),
        SizedBox(height: 30),
        Card(
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 20.0,right: 10.0),

            title: Text('About'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),


      ])
    );
  }
}
