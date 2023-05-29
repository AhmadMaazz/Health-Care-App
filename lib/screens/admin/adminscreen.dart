import 'package:flutter/material.dart';
import 'package:homedix/screens/admin/addemployee.dart';
import 'package:homedix/screens/admin/adminhomepage.dart';
import 'package:homedix/screens/admin/ourpatients.dart';
import 'package:homedix/screens/admin/statistics.dart';


class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    AdminHomePage(),
    AddEmployee(),
    OurPatients(),
    Statistics(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF13548A),
      //   elevation: 0,

      // ),

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
              icon: Icon(Icons.add_business),
              // title: Text('Search'),
              label: 'Add Emp',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              // title: Text('Search'),
              label: 'Patients',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: Icon(Icons.data_exploration_sharp),
              // title: Text('Search'),
              label: 'Statistics',
              backgroundColor: Colors.yellow),
        ],
        type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.red,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 15,
        backgroundColor: const Color(0xFF018C97),
      ),
    );
  }
}
