import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yalla_assignment/Screens/screen1.dart';
import 'package:yalla_assignment/Screens/grid_view.dart';
import 'package:yalla_assignment/Screens/Screen_2/screen2_R.dart';

// int _selectedIndex = 0;
List screens = [const ScreenOne(), const MyGridView(), const ScreenTwoR()];
final StateProvider<int> navigationProvider = StateProvider<int>((ref) => 0);

class HomeBase extends ConsumerWidget {
  const HomeBase({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //print('pressed'); // still reuildig while  wrappig the BottomNavigationBar only  with Consumer widget ...
    //I Think this is normal here because we  have to show the whole view again
    int selectedIndex = ref
        .watch(navigationProvider); // Ca't bbe final here to take a value down
    return Scaffold(
        // drawer:  CustomizedDrawer(sharedPreferences: sharedPreferences, user: null,),
        appBar: AppBar(title: const Text('Hello From here')),
        body: screens[selectedIndex],
        bottomNavigationBar: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
          return BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.restaurant_menu_rounded), label: 'Menu'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'Cart')
            ],
            currentIndex: selectedIndex,
            onTap: (value) {
              ref.watch(navigationProvider.notifier).state =
                  selectedIndex = value;
            },
          );
        }));
  }
}
