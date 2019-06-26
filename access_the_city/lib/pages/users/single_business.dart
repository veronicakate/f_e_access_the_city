import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

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
                Image.asset("images/logo.png", width: 70.0, height: 40.0)
              ]),
          iconTheme: IconThemeData(color: Colors.deepPurple),
        ),
        body: ListView(children: [
          Center(
              child: Text('Crazy Pedro\'s',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0))),
          Center(
              child: Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset('images/crazypedros.jpg'),
                  width: 300.0)),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                            'We love to party all the time at NQ Pizza\'s. Grab a Frozen Margarita and a slice of Pizza and watch the party unfold',
                            style: TextStyle(fontSize: 20.0))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/star.png', width: 40),
                        Image.asset('images/star.png', width: 40),
                        Image.asset('images/star.png', width: 40),
                        Image.asset('images/star.png', width: 40)
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
                        Text('address', style: TextStyle(fontSize: 20.0))
                      ]))),
          Center(
            child: Column(children: [
              Container(
                width: 300.0,
                height: 60.0,
                margin: EdgeInsets.only(top: 50),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  child: Text('Call'),
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  onPressed: () {
                    UrlLauncher.launch("tel://+441111111111");
                  },
                ),
              ),
              Container(
                width: 300.0,
                height: 60.0,
                margin: EdgeInsets.only(top: 30, bottom: 50),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  child: Text('Get Directions'),
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
