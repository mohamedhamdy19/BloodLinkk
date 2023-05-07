import 'package:bloodlink/make_request.dart';
import 'package:bloodlink/profile.dart';
import 'package:flutter/material.dart';
import 'menu_page.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Make_request()));
          break;
        case 1:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MenuPage()));
          break;
        case 2:
          // Navigate to the profile page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Profile()));
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color.fromARGB(255, 199, 40, 28),
      onTap: _onItemTapped,
    );
  }
}
