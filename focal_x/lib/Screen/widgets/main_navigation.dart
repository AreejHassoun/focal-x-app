import 'package:flutter/material.dart';
import 'package:focal_x/Screen/ui/details_screen.dart';
import 'package:focal_x/Screen/ui/home_screen.dart';
import 'package:focal_x/Screen/ui/login_screen.dart';
import 'package:focal_x/Screen/ui/messages_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int selectedPage = 0;
  final pages = [HomeScreen(), DetailsScreen(), MessagesScreen(),LoginScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedPage,
          fixedColor:  Color(0xFFFF8500),
          unselectedItemColor: Color(0xFFC7C9D9),
          onTap: (position) {
            setState(() {
              selectedPage = position;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.email_outlined),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: "")
          ]),
    );
  }
}