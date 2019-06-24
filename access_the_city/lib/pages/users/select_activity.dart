import 'package:access_the_city/pages/users/list_of_businesses.dart';
import 'package:flutter/material.dart';

class SelectActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Activity"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('View Options'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BusinessList()),
            );
          },
        ),
      ),
    );
  }
}
