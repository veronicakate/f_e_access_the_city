import 'package:flutter/material.dart';
import 'package:access_the_city/pages/users/select_location.dart';

class SingleBusiness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Business"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Search Again'),
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
