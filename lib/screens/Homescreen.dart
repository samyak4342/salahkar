import 'package:flutter/material.dart';
import 'package:salahkar/screens/Homepage.dart';
import 'package:salahkar/screens/Meet_screen.dart';
import 'package:salahkar/screens/Message_screen.dart';
import 'package:salahkar/screens/Mprofile_section.dart';

import '../constants/constant_color.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final _pageOptions = [
    HomePage(),
    MeetScreen(),
    MessageScreen(),
    MprofileSection(),
    ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: _pageOptions[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 10.0,

            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded,size: 35,),
                label: 'Home',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call_rounded,size: 35,),
                label: 'Meet',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message,size: 35,),
                label: 'Message',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_sharp,size: 35,),
                label: 'Profile',
                backgroundColor: Colors.white,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: darkBlue,
            onTap: _onItemTapped,
            unselectedItemColor:Color.fromRGBO(184, 184, 184, 1),
          ),

        ),
        );

  }
}