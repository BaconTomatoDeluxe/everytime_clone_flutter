import 'package:everytime_clone/screens/campicpage.dart';
import 'package:everytime_clone/homepage.dart';
import 'package:everytime_clone/screens/listpage.dart';
import 'package:everytime_clone/screens/notificationpage.dart';
import 'package:everytime_clone/timepage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    HomePage(),
    TimePage(),
    ListPage(),
    NotificationPage(),
    CampicPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.3),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 26,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.space_dashboard_outlined,
                size: 26,
              ),
              label: 'Time'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt_outlined,
                size: 26,
              ),
              label: 'List'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_rounded,
                size: 26,
              ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on_outlined,
                size: 26,
              ),
              label: 'Campic')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
