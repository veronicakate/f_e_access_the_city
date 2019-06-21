import 'package:flutter/material.dart';
import 'package:access_the_city/pages/owners/owner_join.dart';

class AddBusiness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Another Business"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Register New Business'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OwnerJoin()),
            );
          },
        ),
      ),
    );
  }
}
