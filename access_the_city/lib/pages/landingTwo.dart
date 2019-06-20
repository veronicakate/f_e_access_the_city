import 'package:flutter/material.dart';
import 'package:access_the_city/pages/SignIn.dart';

class LandingTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landing Two"),
      ),
      body: Column(children: <Widget>[
        RaisedButton(
          child: Text('Sign In'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignIn()),
            );
          },
        ),
        RaisedButton(
          child: Text('Join'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignIn()),
            );
          },
        ),
      ]),
    );
  }
}
