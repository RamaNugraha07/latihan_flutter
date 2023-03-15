import 'package:Sales/dashboard.dart';
import 'package:Sales/login.dart';
import 'package:Sales/monitoring.dart';
import 'package:Sales/profile.dart';
import 'package:Sales/tracker.dart';
import 'package:flutter/material.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar>{

 int _selectedIndex = 0;
  final List<Widget> _children = [
    Dashboard(),
    Monitoring(),
    Tracker(),
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
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[800],
        onTap : _onItemTapped,
        currentIndex : _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor, color: Colors.black,),
            label: 'Monitoring',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes, color: Colors.black,),
            label: 'Tracker',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,  color: Colors.black,),
            label: 'Profil',
          ),
        ],
      ),
    );  
  }
}