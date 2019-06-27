import 'package:access_the_city/pages/users/select_activity.dart';
import 'package:access_the_city/pages/users/landing_user_page.dart';
import 'package:flutter/material.dart';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  TextEditingController _locationController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.deepPurple),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(40.0, 100.0, 0.0, 0.0),
                child: Text(
                  'Where would you like to go?',
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
              ),
            ],
          )),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _locationController,
                  decoration: InputDecoration(
                      labelText: 'LOCATION',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(height: 20.0),
                SizedBox(height: 20.0),
                SizedBox(height: 40.0),
                Container(
                  height: 60.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.grey,
                    color: hexToColor('#673BB7'),
                    elevation: 7.0,
                    child: GestureDetector(
                        onTap: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new SelectActivity(
                                  value: _locationController.text,
                                ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Center(
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                                fontSize: 35.00,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
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
}
