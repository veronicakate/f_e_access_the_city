import 'package:access_the_city/pages/users/user_requirements.dart';
import 'package:flutter/material.dart';

class UserJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Join"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Requirements'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserRequirements()),
            );
          },
        ),
      ),
    );
  }
}
