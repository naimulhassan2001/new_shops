
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  List navigationPagesList = [

  ];

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 88,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFFFFFFFF),
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: Colors.greenAccent,
            unselectedItemColor: Color(0xFF939393),
            showSelectedLabels: true,
            showUnselectedLabels: true,

            // unselectedItemColor: Colors.black,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });},
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black26,), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Colors.black26,), label: "Wishlist"),
              BottomNavigationBarItem(icon: Icon(Icons.file_present_outlined, color: Colors.black26,), label: "History"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded,color: Colors.black38,), label: "Account"),
          ]
        )
      );

  }
}