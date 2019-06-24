import 'package:flutter/material.dart';
import 'package:access_the_city/pages/owners/select_facilities.dart';

class OwnerJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Owner Join Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Select Facilities'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectFacilities()),
            );
          },
        ),
      ),
    );
  }
}
