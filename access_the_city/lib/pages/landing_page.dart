import 'package:flutter/material.dart';
import 'package:access_the_city/pages/users/landing_user_page.dart';
import 'package:access_the_city/pages/owners/landing_owner_page.dart';

class LandingPage extends StatelessWidget {

  @override
  
  Widget build(BuildContext context) {

    return Scaffold(

       backgroundColor: Colors.white,
   
   body: Center(
     
    
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[

            Container(
              width: 300.0,
              height: 60.0,
              margin: EdgeInsets.all(18.0),
              child:
                Image.asset("images/logo.png", width:70.0,height:40.0),
            ),
          
            Container(
              width: 300.0,
              height: 60.0,
          
              margin: EdgeInsets.all(18.0),
 
              child: RaisedButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
          child: Text('User'),
          
          //  padding: const EdgeInsets.all(18.0),
           textColor: Colors.white,
           color: Colors.deepPurple,

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserLanding()),
            );
          },
        
        ),
            ),
       Container(
         width: 300.0,
          height: 60.0,
 margin: EdgeInsets.all(10.0),
      child:  RaisedButton(
        

 shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
          child: Text('Owner'),
            padding: const EdgeInsets.all(18.0),
           textColor: Colors.white,
          color: Colors.deepPurple,

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OwnerLanding()),
            );
          },
        ),
       ),

      ])
    )
   
    );
  }

}