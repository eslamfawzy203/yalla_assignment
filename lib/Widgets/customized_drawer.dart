import 'package:flutter/material.dart';
import 'package:yalla_assignment/Screens/screen1.dart';

class CustomizedDrawer extends StatelessWidget {
  const CustomizedDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children:  [
        const DrawerHeader(
            child: CircleAvatar(
          backgroundColor: Colors.amber,
        )),
      ElevatedButton(onPressed: (){
Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const ScreenOne()),
 (route) => false);
      }, child: const Text('Logout'))],
    ));
  }
}
