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
      body: 
       new GridView.count( 
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        
        children: _buildGridTiles(6),
      ),
    //   body: Center( 
    //        child: RaisedButton(
    //       child: Text('View Options'),
    //       onPressed: () {
    //         getLocation("${widget.value}");
    //           //  debugPrint("${widget.value}");        // print(t.createState().locationController.text);

    //         // Navigator.push(
    //         //   context,
    //         //   MaterialPageRoute(builder: (context) => BusinessList()),
    //         //   );
    //  }
    //     ),
    //   ),
  
        );
  }









  //////////////////http get request//////////////////////
  ///
   getLocation(value) async {
     var url = 'https://access-the-city-backend.herokuapp.com/api/businesses/?city=${value}&type=food';

     debugPrint(value);
    //  var queryParam = {
    //    'city':'Manchester',
    //    'type':'food'
    //  };
    //  var uri = 

  var response =    await http.get(url);
       // var response = await http.get(uri);
    
  



  print(response.statusCode);
    
    
    }
      List<Widget> _buildGridTiles(numberOfTiles){
        List<Container> containers = new List<Container>.generate(numberOfTiles, 
        (int index){
          final imageName = index < 6 ?
          'images/activity0${index + 1}.png' :'images/activity${index +1}.png';
          return new Container( 
           width: 100,
           height: 600,
            child: Center (child: new Image.asset(imageName),
          ),
          );
        }

        );
        return containers;
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
