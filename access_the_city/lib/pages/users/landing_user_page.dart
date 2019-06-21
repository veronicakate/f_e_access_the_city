import 'package:flutter/material.dart';
import 'package:access_the_city/pages/users/sign_in_user.dart';
import 'package:access_the_city/pages/users/user_join.dart';

class UserLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Landing Page"),
      ),
   
   body: Center(
    
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
          
        
        RaisedButton(
        
          child: Text('Sign In'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserSignIn()),
            );
          },
        ),
        RaisedButton(
          child: Text('Join'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserJoin()),
            );
          },
        ),
      ]),
    )
   
    );
  }

}




