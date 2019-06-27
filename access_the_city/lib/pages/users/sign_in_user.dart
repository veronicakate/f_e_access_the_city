import 'package:flutter/material.dart';

import 'package:access_the_city/pages/users/select_location.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class UserSignIn extends StatefulWidget {
  @override
  _UserSignInState createState() => _UserSignInState();
}

class _UserSignInState extends State<UserSignIn> {
  Map data;
  List userData;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,

        title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("images/logo.png", width: 70.0, height: 40.0),
              Container(
                  // padding:const EdgeInsets.all(20.0),
                  )
            ]),
        iconTheme: IconThemeData(color: Colors.deepPurple),
        // iconTheme: IconThemeData(color: Colors.red,size:100, opacity: 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 70.0, 0.0, 0.0),
                child: Text(
                  'Login',
                  style:
                      TextStyle(fontSize: 80.0, fontWeight: FontWeight.normal),
                ),
              )
            ],
          )),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(height: 20.0),
                TextField(
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                    obscureText: true,
                    controller: passwordController),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                  child: InkWell(
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Monstserrat',
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 60.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.deepPurple,
                    color: Colors.deepPurple,
                    elevation: 7.0,
                    child: GestureDetector(
                        onTap: () {
                          getData(
                              emailController.text, passwordController.text);
                        },
                        child: Center(
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize: 50.0,
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 40.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  getData(email, password) async {
    final Map<String, String> data = {
      "email": "${email}",
      "password": "${password}"
    };

    // final Map<String, String> data = {"email":"velit.justo.nec@risusDonecegestas.co.uk","password":"WKS86ILH1XD"};

    var response = await http.post(
        'https://access-the-city-backend.herokuapp.com/api/users/login',
        headers: {
          "Accept": "application/json",
        },
        body: json.encode(data));

    print(response.statusCode);
    if (response.statusCode == 202) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UserDashboard()),
      );
      //  print(emailController);
      debugPrint(response.body);
    } else {
      var alerDialog = AlertDialog(
        title: Text('Dialog'),
        content: Text('User not found'),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
      showDialog(
        context: context,
        builder: (BuildContext context) {
          debugPrint(response.body);
          print(emailController.text);

          return alerDialog;
        },
      );
    }
    emailController.text = '';
    passwordController.text = '';
  }
}
