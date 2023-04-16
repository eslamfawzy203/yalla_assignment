import 'package:flutter/material.dart';
// import 'package:yalla_assignment/Screens/login_screen.dart';
import 'package:yalla_assignment/Screens/screen1.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:yalla_assignment/Screens/test.dart';

// String? _password;

class CustomizedDrawer extends StatefulWidget {
  const CustomizedDrawer({super.key});

  @override
  State<CustomizedDrawer> createState() => _CustomizedDrawerState();
}

class _CustomizedDrawerState extends State<CustomizedDrawer> {
   
  // getPassword() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.getString("userPassword");
  //   setState(() {
  //      _password = prefs.getString("userPassword")!;
  //   });

  //  // debugPrint(_password);
  // }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        const DrawerHeader(
            decoration: BoxDecoration(),
            child: CircleAvatar(
              backgroundColor: Colors.amber,
            )),
        const SizedBox(height: 15),
        const Text(''),
        const SizedBox(height: 15),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const ScreenOne()),
                  (route) => false);
            //  getPassword();
              
            },
            child: const Text('Logout'))
      ],
    ));
  }
}
