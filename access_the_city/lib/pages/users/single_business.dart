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
        body: Center(
            child: Column(
          children: <Widget>[
            Text('NQ Pizza',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0)),
          ],
        )));
  }
}
