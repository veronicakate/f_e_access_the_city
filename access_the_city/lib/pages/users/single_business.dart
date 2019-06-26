import 'package:flutter/material.dart';
import 'package:access_the_city/pages/users/select_location.dart';

class SingleBusiness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ),
        body: Column(children: [
          Center(
              child: Text('NQ Pizza',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Description',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                        Text(
                            'We love to party all the time at NQ Pizza\'s. Grab a Frozen Margarita and a slice of Pizza and watch the party unfold')
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Rating',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                        Text('Stars')
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Facilities',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                        Text('Stars')
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Address',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                        Text('Stars')
                      ]))),
          Center(
            child: Column(children: [
              Container(
                width: 300.0,
                height: 60.0,
                margin: EdgeInsets.all(18.0),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  child: Text('Call'),
                  //  padding: const EdgeInsets.all(18.0),
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  onPressed: () {},
                ),
              ),
              Container(
                width: 300.0,
                height: 60.0,
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  child: Text('Get Directions'),
                  //  padding: const EdgeInsets.all(18.0),
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  onPressed: () {},
                ),
              )
            ]),
          )
        ]));
  }
}
