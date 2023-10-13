// ignore_for_file: file_names

import 'package:bloc_try_example_17_09_2023/screens/homeScreen.dart';
import 'package:bloc_try_example_17_09_2023/utility/colors.dart';
import 'package:flutter/material.dart';

import 'orderCartScreen.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    Container(color: Colors.amber),
    const OrderCartScreen(),
    Container(color: Colors.pink),
  ];
  void _onItemChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.water_drop_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.refresh_sharp), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
        ],
        type: BottomNavigationBarType.fixed,
        elevation: 10.0,
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: ColorItems().grey,
        selectedItemColor: ColorItems().blue,
        onTap: _onItemChange,
      ),
    );
  }
}
