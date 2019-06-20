import 'package:flutter/material.dart';
import 'package:access_the_city/pages/landingTwo.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Landing Page")),
      body: Center(
        child: RaisedButton(
          child: Text('hello first page'),
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
