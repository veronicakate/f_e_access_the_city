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
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 60.0))),
          Center(
              child: Container(
            padding: EdgeInsets.only(top: 20),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.black)),
                child: Tooltip(
                    message: "Crazy Pedro\'s store front",
                    child:
                        Image.asset('images/crazypedros.jpg', width: 400.0))),
          )),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 20.0, left: 15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                            'We love to party all the time at Crazy Pedro\'s. Grab a Frozen Margarita and a slice of Pizza and watch the party unfold',
                            style: TextStyle(fontSize: 30.0))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Tooltip(
                            message: '4 stars',
                            child: Image.asset('images/stars.png', width: 200))
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 20.0, left: 15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Facilities',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50.0)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Tooltip(
                                  message: 'wheelchair access',
                                  child: Image.asset('images/mobility.png',
                                      width: 100, fit: BoxFit.cover)),
                              Tooltip(
                                  message: 'guide dog',
                                  child: Image.asset('images/dog.png',
                                      width: 100, fit: BoxFit.cover)),
                              Tooltip(
                                  message: 'audio description',
                                  child: Image.asset('images/audiodesc.png',
                                      width: 100, fit: BoxFit.cover))
                            ])
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 20.0, left: 15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Address',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50.0)),
                        Text('1 Short St, M3 3BQ',
                            style: TextStyle(fontSize: 40.0))
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
                  child: Text('CALL', style: TextStyle(fontSize: 30.00)),
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
                  child:
                      Text('GET DIRECTIONS', style: TextStyle(fontSize: 30.00)),
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
