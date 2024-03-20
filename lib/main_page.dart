import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          selectedItemColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                    _selectedIndex == 0 ? Icons.home : Icons.home_outlined),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                    _selectedIndex == 1 ? Icons.search : Icons.search_outlined),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 2
                    ? Icons.video_call
                    : Icons.video_call_outlined),
                label: "Reels"),
            BottomNavigationBarItem(
                icon: Icon(
                    _selectedIndex == 3 ? Icons.shop : Icons.shop_outlined),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(
                    _selectedIndex == 4 ? Icons.person : Icons.person_outline),
                label: "Account"),
          ]),
    );
  }
}
