import 'package:flutter/material.dart';
import 'package:access_the_city/pages/owners/update_profile.dart';
import 'package:access_the_city/pages/owners/owner_dashboard.dart';

class ViewProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Profile"),
      ),
      body: Column(children: <Widget>[
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
          child: Text('Go to Dashboard'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OwnerDashboard()),
            );
          },
        ),
      ]),
    );
  }
}
