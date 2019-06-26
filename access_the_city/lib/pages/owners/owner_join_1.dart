import 'package:flutter/material.dart';
import 'package:access_the_city/pages/owners/owner_join_2.dart';

class OwnerJoin extends StatelessWidget {
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
              'Register your business', 
              style: TextStyle( 
                fontSize: 30.0, fontWeight: FontWeight.normal ),
            ),
            )   ,
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
              SizedBox(height: 40.0),
              Container( 
                height: 60.0, 
                child: Material( 
                  borderRadius:  BorderRadius.circular(20.0), 
                  shadowColor: Colors.grey,
                  color: Colors.deepPurple,
                  elevation: 7.0, 
                  child:GestureDetector ( 
                    onTap: () { 
       Navigator.push(
              context,
        MaterialPageRoute(builder: (context) => RegisterBusiness()),
          );
                    },
                    child:Center( 
                      child:Text( 
                        'NEXT', 
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