// About app page

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20.0),
          child: Text('Versioning info goes here'),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text(
            'Release Version',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: Text('v0.1'),
        ),
      ],
    );
  }
}
