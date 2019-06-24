import 'package:flutter/material.dart';
import 'package:access_the_city/pages/owners/add_another_business.dart';
import 'package:access_the_city/pages/owners/view_profile.dart';
import 'package:access_the_city/pages/owners/update_profile.dart';

class OwnerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Owner Dashboard"),
      ),
      body: Column(children: <Widget>[
        RaisedButton(
          child: Text('View Profile'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViewProfile()),
            );
          },
        ),
        RaisedButton(
          child: Text('Update Profile'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UpdateProfile()),
            );
          },
        ),
        RaisedButton(
          child: Text('Add Business'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddBusiness()),
            );
          },
        ),
      ]),
    );
  }
}
