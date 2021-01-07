import 'package:bottom_navigation_demo/screens/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Simple Interest Calculator',
          theme: ThemeData(
            // Define the default brightness and colors.
            primaryColor: Colors.purpleAccent[800],
            accentColor: Colors.lightBlue,),
          home: BottomNavigationScreen(),
    )
  );
}

