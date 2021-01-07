import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {


  List<Center> tabs = [
    Center(
      child: Icon(Icons.home),
    ),
    Center(
      child: Icon(Icons.search),
    ),
    Center(
      child: Icon(Icons.payment),
    ),
    Center(
      child: Icon(Icons.person),
    ),
  ];

  int _currentIndexOfBottomNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation"),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
        body: _mainLayout());
  }

  Widget _mainLayout() {
    return Container(
      child: tabs[_currentIndexOfBottomNavigation],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index){
        setState(() {
          _currentIndexOfBottomNavigation = index;
        });
      },
        currentIndex: _currentIndexOfBottomNavigation,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Payment",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue,
          ),
        ]);
  }
}
