import 'package:flutter/material.dart';
import 'package:forusapp/views/screens/home_page.dart';
import 'package:forusapp/views/screens/new.dart';
import 'package:forusapp/views/screens/notification.dart';
import 'package:forusapp/views/screens/profile.dart';
import 'package:forusapp/views/screens/schedule.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    SchedulePage(),
    NotificationPage(),
    NewPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black26,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.house_outlined, color: Colors.black45,),
            activeIcon: Icon(Icons.house, color: Colors.black, size: 35,),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined, color: Colors.black45),
            activeIcon: Icon(Icons.calendar_month, color: Colors.black, size: 35,),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined, color: Colors.black45),
            activeIcon: Icon(Icons.notifications_active, color: Colors.black, size: 35,),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black45),
            activeIcon: Icon(Icons.settings, color: Colors.black, size: 35,),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined, color: Colors.black45),
            activeIcon: Icon(Icons.person_2, color: Colors.black, size: 35,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
