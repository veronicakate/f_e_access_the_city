import 'package:access_the_city/pages/landing_page.dart';
import 'package:flutter/material.dart';

//this is the starting point for the application.
void main() {
  //run app takes a widget and material app widget gives us functionality
  runApp(new MaterialApp(
    
    debugShowCheckedModeBanner: false,
    home: LandingPage(),
    
  ),
  
  );

}
