import 'package:flutter/material.dart';
import 'package:access_the_city/pages/landingTwo.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Route"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('third page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LandingTwo()),
            );
          },
        ),
      ),
    );
  }
}
