import 'package:flutter/material.dart';
import 'package:access_the_city/pages/users/sign_in_user.dart';
import 'package:access_the_city/pages/users/user_join.dart';

class UserLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.deepPurple),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Container(
                width: 300.0,
                height: 60.0,
                margin: EdgeInsets.all(18.0),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  child: Text('Sign In',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 35.00,
                      )),

                  //  padding: const EdgeInsets.all(18.0),
                  textColor: Colors.white,
                  color: Colors.deepPurple,

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserSignIn()),
                    );
                  },
                ),
              ),
              Container(
                width: 300.0,
                height: 60.0,
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  child: Text('Join',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 35.00,
                      )),
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserJoin()),
                    );
                  },
                ),
              ),
            ])));
  }
}
