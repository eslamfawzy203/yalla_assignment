import 'package:flutter/material.dart';
import 'package:yalla_assignment/Screens/screen1.dart';
import 'package:yalla_assignment/Screens/screen2.dart';
import 'package:yalla_assignment/Widgets/customized_drawer.dart';




class HomeBase extends StatefulWidget {
  const HomeBase({super.key});

  @override
  State<HomeBase> createState() => _HomeBaseState();
}

class _HomeBaseState extends State<HomeBase> {
  int _selectedIndex = 0;
  List screens = [const ScreenOne(), const ScreenTwo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: const CustomizedDrawer(),
    appBar: AppBar(title: const Text('Hello From here')),
      body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart')
      ],
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
    ));
  }
}
