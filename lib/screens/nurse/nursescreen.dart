import 'package:flutter/material.dart';
import 'package:hospital_app/screens/nurse/nursehomepage.dart';
import 'package:hospital_app/widgets/profile.dart';

class NurseScreen extends StatefulWidget {
  const NurseScreen({super.key});

  @override
  State<NurseScreen> createState() => _NurseScreenState();
}

class _NurseScreenState extends State<NurseScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    NurseHomePage(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF13548A),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // title: Text('Home'),
              label: 'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              // title: Text('Search'),
              label: 'Profile',
              backgroundColor: Colors.yellow),
        ],
        type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.red,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 15,
        backgroundColor: const Color(0xFF13548A),
      ),
    );
  }
}
