import 'package:flutter/material.dart';
// import 'package:yalla_assignment/Screens/login_screen.dart';
import 'package:yalla_assignment/Screens/screen1.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yalla_assignment/local/i_local_storage_caller.dart';
import 'package:yalla_assignment/local/shared_pref_local_storage_caller.dart';
import 'package:yalla_assignment/models/login_model.dart';

class CustomizedDrawer extends StatelessWidget {
  final LogInModel user;
  final SharedPreferences sharedPreferences;
  const CustomizedDrawer(
      {super.key, required this.user, required this.sharedPreferences});

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
        Text(user.email),
        Text(user.password),
        const SizedBox(height: 15),
        ElevatedButton(
            onPressed: () async {
              SharedPrefsLocalStorageCaller(
                      sharedPreferences: sharedPreferences)
                  .restoreData(key: 'user', dataType: DataType.string)
                  .toString();
              debugPrint(sharedPreferences.getString('user').toString());
            },
            child: const Text('Retrieve')),
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


 

