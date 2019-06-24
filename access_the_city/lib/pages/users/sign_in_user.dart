import 'package:flutter/material.dart';
import 'package:access_the_city/pages/users/select_location.dart';

class UserSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        appBar: AppBar(
       
        backgroundColor: Colors.white,
         elevation:0.0,
        
    title: Row( 
     crossAxisAlignment:CrossAxisAlignment.center,
      mainAxisAlignment:MainAxisAlignment.end,
    children:[
      Image.asset("images/logo.png", width:70.0,height:40.0),
      Container(  
        // padding:const EdgeInsets.all(20.0),
      )
      ]
    ),
        iconTheme: IconThemeData(color: Colors.deepPurple),
                // iconTheme: IconThemeData(color: Colors.red,size:100, opacity: 1),

      ),
   
      body: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container( 
          child: Stack(children: <Widget>[ 
            Container(padding:  EdgeInsets.fromLTRB(15.0,100.0,0.0, 0.0),
            child: Text( 
              'User', 
              style: TextStyle( 
                fontSize: 80.0, fontWeight: FontWeight.normal ),
            ),
            )   ,
              Container( 
                padding:  EdgeInsets.fromLTRB(15.0,175.0,0.0, 0.0),
            child: Text( 
              'Login', 
              style: TextStyle( 
                fontSize: 80.0, fontWeight: FontWeight.normal ),
            ),
            ),
            Container( 
                padding:  EdgeInsets.fromLTRB(220.0,175.0,0.0, 0.0),
            child: Text( 
              '.', 
              style: TextStyle( 
                fontSize: 80.0, fontWeight: FontWeight.bold,color: Colors.black ),
            ),
            )
          ],
          )
          ),
          Container(  
            padding: EdgeInsets.only(top:35.0,left: 20.0,right:20.0),
            child: Column(children: <Widget>[
              TextField( 
                decoration:  InputDecoration( 
                  labelText: 'EMAIL', 
                  labelStyle: TextStyle(fontFamily: 'Montserrat', 
                  fontWeight: FontWeight.bold , 
                  color:Colors.black,
                  fontSize: 20.0
                  ),
                focusedBorder: UnderlineInputBorder(borderSide:  BorderSide(color: Colors.black))

                ),
              ),
              SizedBox(height: 20.0),
              TextField( 
                decoration:  InputDecoration( 
                  labelText: 'PASSWORD', 
                  labelStyle: TextStyle(fontFamily: 'Montserrat', 
                  fontWeight: FontWeight.bold , 
                  color:Colors.black,
                  fontSize: 20.0
                  ),
                focusedBorder: UnderlineInputBorder(borderSide:  BorderSide(color: Colors.black))

                ),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              Container ( 
                alignment: Alignment(1.0,0.0),
                padding:EdgeInsets.only(top:15.0,left: 20.0),
                child: InkWell ( 
                  child: Text('Forgot Password', 
                  style: TextStyle (color: Colors.black, fontWeight:  FontWeight.bold, 
                  fontFamily: 'Monstserrat', 
                  decoration: TextDecoration.underline ),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Container( 
                height: 40.0, 
                child: Material( 
                  borderRadius:  BorderRadius.circular(20.0), 
                  shadowColor: Colors.grey,
                  color: Colors.grey,
                  elevation: 7.0, 
                  child:GestureDetector ( 
                    onTap: () { 
       Navigator.push(
              context,
        MaterialPageRoute(builder: (context) => UserDashboard()),
          );
                    },
                    child:Center( 
                      child:Text( 
                        'SUBMIT', 
                        style: TextStyle( 
                        color: Colors.white, 
                        fontWeight: FontWeight.bold, 
                        fontFamily:  'Montserrat'
                        ),
                      ) ,
                    )
                  ),

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




//////////////////////////////////////
///
///class UserSignIn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("User Sign In"),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('User Dashboard'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => UserDashboard()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
