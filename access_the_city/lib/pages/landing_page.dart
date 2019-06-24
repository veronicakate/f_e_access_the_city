import 'package:flutter/material.dart';
import 'package:access_the_city/pages/users/landing_user_page.dart';
import 'package:access_the_city/pages/owners/landing_owner_page.dart';


class LandingPage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landing Page"),

      ),
      body: Column(children: <Widget>[
        RaisedButton(
          child: Text('User'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserLanding()),
            );
          },
        ),
        RaisedButton(
          child: Text('Owner'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OwnerLanding()),
            );
          },
        ),
      ]),
    );
  }
}


