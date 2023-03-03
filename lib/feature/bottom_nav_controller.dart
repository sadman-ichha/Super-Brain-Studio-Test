import 'package:flutter/material.dart';
import 'package:intern_test/feature/botton_nav_pages/cart_screen/cart_screen.dart';
import 'package:intern_test/feature/botton_nav_pages/profile_screen/profile_screen.dart';

import 'botton_nav_pages/home_screen/home_screen.dart';
import 'botton_nav_pages/teacher_type_and_location/views/teacher_type_and_location.dart';

class BottomNavControllar extends StatefulWidget {
  const BottomNavControllar({super.key});

  @override
  State<BottomNavControllar> createState() => _BottomNavControllarState();
}

class _BottomNavControllarState extends State<BottomNavControllar> {
  //const BottomNavControllar({super.key});
  int _currentIndex = 1;

  List pages = const [
    HomeScreen(),
    TeacherTypeAndLocation(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/home.png",
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/favorite.png",
                ),
                label: "Favorite"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/cart.png",
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/profile.png",
                ),
                label: "Profile"),
          ]),
      body: pages[_currentIndex],
    );
  }
}
