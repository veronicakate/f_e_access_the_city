import 'package:access_the_city/pages/users/list_of_businesses.dart';
import 'package:flutter/material.dart';
// import 'package:access_the_city/pages/users/select_location.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';


class  SelectActivity  extends StatefulWidget {
  final String value;


  SelectActivity({Key key,this.value}) : super(key:key);
  @override
  _SelectActivityState createState() => new _SelectActivityState();
}

class _SelectActivityState extends State<SelectActivity> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text("Select Activity"),
      ),
      body: Center( 
           child: RaisedButton(
          child: Text('View Options'),
          onPressed: () {
            getLocation();
              //  debugPrint("${widget.value}");        // print(t.createState().locationController.text);

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => BusinessList()),
            //   );
     }
        ),
      ),
  );
  }









  //////////////////http get request//////////////////////
  ///
   getLocation() async {
     var queryParam = {
       'city':'Manchester',
       'type':'food'
     };
     var uri = 

        Uri.http('https://access-the-city-backend.herokuapp.com','/api/businesses/quer',queryParam);
        var response = await http.get(uri);
    
  



  // print(response.body);
    
        print(response.body);

    }
    
  
}




// class SelectActivity extends StatelessWidget {
// var loc ;
//   @override
//   Widget build(BuildContext context) {
//     UserDashboard t = new UserDashboard();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Select Activity"),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('View Options'),
//           onPressed: () {
//             debugPrint(loc);
//                        // print(t.createState().locationController.text);

//             // Navigator.push(
//             //   context,
//             //   MaterialPageRoute(builder: (context) => BusinessList()),
//             // );
//           }
//         ),
//       ),
//     );
//   }
   
         

//  //return print('test');;

//     }
 
// }
