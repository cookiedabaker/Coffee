// error with flutterfire on launch

import 'package:flutter/material.dart';

class ErrorAtInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Project Coffee",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text("Something's wrong. :/"),
          Text('Please try again'),
          SizedBox(height: 10),
          Icon(Icons.bug_report)
        ],
      ),
    );
  }
}
