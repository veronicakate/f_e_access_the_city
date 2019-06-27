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

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

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
          
// shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(20.0),
            
            
//               ),            
shape: Border.all(color: hexToColor("#673BB7"),width: 2),

               child : new Container( 
                 width: 20.0,
                 height: 220,
              // child: RaisedButton(
                child: new InkWell(
                  child: new Container(
                  
          child: new Text( 
             
            "${data[index]['business_name']}\n\n${data[index]['distance']} miles away \nRating:  ${data[index]['rating']}"
            , style: TextStyle (fontSize: 28.0)),
             
                  ),
            
         onTap: () {
            
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SingleBusiness()),
            );
         },
        ),
               padding:const EdgeInsets.all(30),
             
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