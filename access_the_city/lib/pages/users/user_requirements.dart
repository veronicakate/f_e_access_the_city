import 'package:access_the_city/pages/users/select_location.dart';
import 'package:flutter/material.dart';

class UserRequirements extends StatelessWidget {
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
        // iconTheme: IconThemeData(color: Colors.red,size:100, opacity: 1),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Center(
              child: Text("Please select your requirements",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 40.0,
                  ))),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserDashboard()),
                  );
                },
                child: Tooltip(
                    message: 'visual',
                    child: Image.asset('images/visual.png',
                        width: 150, fit: BoxFit.cover))),
            FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserDashboard()),
                  );
                },
                child: Tooltip(
                    message: 'mobility',
                    child: Image.asset('images/mobility.png',
                        width: 150, fit: BoxFit.cover)))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserDashboard()),
                  );
                },
                child: Tooltip(
                    message: 'aural',
                    child: Image.asset('images/aural.png',
                        width: 150, fit: BoxFit.cover))),
            FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserDashboard()),
                  );
                },
                child: Tooltip(
                    message: 'cognitive',
                    child: Image.asset('images/cognitive.png',
                        width: 150, fit: BoxFit.cover)))
          ])
        ],
      )),
    );
  }
}
