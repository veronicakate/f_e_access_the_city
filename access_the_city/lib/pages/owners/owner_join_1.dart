import 'package:flutter/material.dart';
import 'package:access_the_city/pages/owners/owner_join_2.dart';

class OwnerJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register as a Business Owner"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Add your business'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterBusiness()),
            );
          },
        ),
      ),
    );
  }
}
