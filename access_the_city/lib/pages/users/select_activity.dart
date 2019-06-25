import 'package:access_the_city/pages/users/list_of_businesses.dart';
import 'package:flutter/material.dart';
// import 'package:access_the_city/pages/users/select_location.dart';

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
               debugPrint("${widget.value}");        // print(t.createState().locationController.text);

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => BusinessList()),
            //   );
     }
        ),
      ),
  );
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
//     getLocation(location) async {
//  this.loc = location;
//          debugPrint(this.loc
//          );
         

//  //return print('test');;

//     }
 
// }
