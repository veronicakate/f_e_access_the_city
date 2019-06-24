import 'package:flutter/material.dart';
import 'package:access_the_city/pages/owners/select_facilities.dart';

class RegisterBusiness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register your business"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Select facilities'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectFacilities()),
            );
          },
        ),
      ),
    );
  }
}
