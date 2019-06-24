import 'package:access_the_city/pages/users/select_activity.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Location"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Select Activity'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectActivity()),
            );
          },
        ),
      ),
    );
  }
}
