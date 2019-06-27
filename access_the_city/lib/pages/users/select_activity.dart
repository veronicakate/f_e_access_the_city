import 'package:access_the_city/pages/users/list_of_businesses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class SelectActivity extends StatefulWidget {
  final String value;

  SelectActivity({Key key, this.value}) : super(key: key);
  @override
  _SelectActivityState createState() => new _SelectActivityState();
}

class _SelectActivityState extends State<SelectActivity> {
  String activity;
  String typeMessage = '';
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
              // Image.asset("images/logo.png", width:70.0,height:40.0),
              Container(
                  // padding:const EdgeInsets.all(20.0),
                  )
            ]),
        iconTheme: IconThemeData(color: Colors.deepPurple),
        // iconTheme: IconThemeData(color: Colors.red,size:100, opacity: 1),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        children: _buildGridTiles(6),
      ),
      backgroundColor: Colors.white,
    );
  }

  //////////////////http get request//////////////////////
  ///
  getLocation(value, index) async {
    //print(index);
    if (index == 0) {
      activity = 'attraction';
      typeMessage = 'attraction';
    } else if (index == 1) {
      activity = 'food';
      typeMessage = 'food';
    } else if (index == 2) {
      activity = 'drink';
      typeMessage = 'drink';
    } else if (index == 3) {
      activity = 'entertainment';
      typeMessage = 'entertainment';
    } else if (index == 4) {
      activity = 'service';
      typeMessage = 'service';
    } else if (index == 5) {
      activity = 'retail';
      typeMessage = 'retail';
    }

    // typeMessage = activity;
    //  print(typeMessage);

    print(index);

    var url =
        'https://access-the-city-backend.herokuapp.com/api/businesses/?city=${value}&type=${activity}&sort_by=distance&latitude=53.4860731&longitude=-2.2422875';

    var response = await http.get(url);
    var route = new MaterialPageRoute(
      builder: (BuildContext context) => new BusinessList(test: response.body),
    );
    Navigator.of(context).push(route);
  }

  List<Widget> _buildGridTiles(numberOfTiles) {
    List<Container> containers =
        new List<Container>.generate(numberOfTiles, (int index) {
      final imageName = index < 6
          ? 'images/activity0${index + 1}.png'
          : 'images/activity${index + 1}.png';
      if (index == 0) {
        typeMessage = 'attraction';
      } else if (index == 1) {
        typeMessage = 'food';
      } else if (index == 2) {
        typeMessage = 'drink';
      } else if (index == 3) {
        typeMessage = 'entertaintment';
      } else if (index == 4) {
        typeMessage = 'services';
      } else if (index == 5) {
        typeMessage = 'retail';
      }

      return new Container(
        width: 100,
        height: 600,
        child: FlatButton(
            onPressed: () {
              getLocation("${widget.value}", index);
              typeMessage = this.activity;
            },
            child: Tooltip(
                child: new Image.asset(imageName,
                    width: 200, height: 150, fit: BoxFit.cover),
                message: typeMessage)),
      );
    });
    return containers;
  }
}