import 'package:access_the_city/pages/users/select_activity.dart';

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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: EdgeInsets.only(right: 80),
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    child: Text('Logout'),
                    textColor: Colors.white,
                    color: Colors.deepPurple,
                    onPressed: () {},
                  )),
              Image.asset("images/logo.png", width: 70.0, height: 40.0),
            ]),
        iconTheme: IconThemeData(color: hexToColor('#673BB7')),
        // iconTheme: IconThemeData(color: Colors.red,size:100, opacity: 1),
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
                  'Where would you',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(40.0, 130.0, 0.0, 0.0),
                child: Text(
                  'like to go?',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
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
