import 'package:access_the_city/pages/users/single_business.dart';
import 'dart:convert';

import 'package:flutter/material.dart';






class  BusinessList  extends StatefulWidget {
  final String test;

  BusinessList({Key key,this.test}) : super(key:key);
  @override
  _BusinessListState createState() => new _BusinessListState();
}

class _BusinessListState extends State<BusinessList> {
  List data;

  @override
  void initState(){
    super.initState();
    this.getListOfBusiness();
    
  }
Widget build(BuildContext context) {

  return Scaffold( 
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
  body: new ListView.builder( 
    itemCount: data == null ? 0 : data.length,
    itemBuilder: (BuildContext context, int index){ 
      return new Container( 
        child: new Center( 
           child:  new  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[  
           new Card( 
             child : new Container( 
                 width: 20.0,
              // child: RaisedButton(
                child: new InkWell(
                  child: new Container(
          child: new Text( 
             
            "Name:   ${data[index]['business_name']}\n \nAddress: ${data[index]['address']}   ${data[index]['city']}\n\n Description:   ${data[index]['description']}${data[index]['city']}"
            , style: TextStyle (fontSize: 16.0)),
             
                  ),
            
         onTap: () {
            
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SingleBusiness()),
            );
         },
        ),
         
               padding:const EdgeInsets.all(20),
             
             )
           )
          ],),
        ),
      );

    },
  ),

  );



  
  }


  getListOfBusiness(){
   setState((){
     var convertData = json.decode("${widget.test}");
    
     data = convertData;
     //print(convertData);
   });
   return 'Success';
  }
}
