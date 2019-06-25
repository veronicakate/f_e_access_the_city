import 'package:access_the_city/pages/users/select_location.dart';
import 'package:flutter/material.dart';

class UserRequirements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Requirements"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('User Dashboard'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserDashboard()),
            );
          },
        ),
      ),
    );
  }
}
