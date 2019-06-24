import 'package:access_the_city/pages/users/single_business.dart';
import 'package:flutter/material.dart';

class BusinessList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Buisness"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('View Business'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SingleBusiness()),
            );
          },
        ),
      ),
    );
  }
}
