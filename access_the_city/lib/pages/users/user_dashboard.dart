import 'package:access_the_city/pages/users/list_of_businesses.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Dashboard"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('View Activites'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BusinessList()),
            );
          },
        ),
      ),
    );
  }
}
