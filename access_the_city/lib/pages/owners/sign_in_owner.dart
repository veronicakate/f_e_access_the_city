import 'package:flutter/material.dart';
import 'package:access_the_city/pages/owners/owner_dashboard.dart';

class OwnerSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Owner Sign In"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Owner Dashboard'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OwnerDashboard()),
            );
          },
        ),
      ),
    );
  }
}
