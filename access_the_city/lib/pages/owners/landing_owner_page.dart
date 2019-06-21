import 'package:flutter/material.dart';
import 'package:access_the_city/pages/owners/sign_in_owner.dart';

class OwnerLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Owner Landing Page"),
      ),
      body: Column(children: <Widget>[
        RaisedButton(
          child: Text('Sign In'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OwnerSignIn()),
            );
          },
        ),
        RaisedButton(
          child: Text('Join'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OwnerSignIn()),
            );
          },
        ),
      ]),
    );
  }
}
