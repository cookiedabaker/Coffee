// Travel page

// Pretty much all of it will be inside a futureBuilder? shows upcoming trips
// and ability to plan trips. THis is also where tri[s are detected and confirmed

import 'package:flutter/material.dart';

class Travel extends StatefulWidget {
  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Travel info and settings')
    );
  }
}
