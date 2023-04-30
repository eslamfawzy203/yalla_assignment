import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yalla_assignment/Screens/grid_view.dart';
// import 'package:yalla_assignment/Screens/grid_view.dart';
// import 'package:yalla_assignment/Screens/home_base.dart';
import 'package:yalla_assignment/Screens/login_screen.dart';
import 'package:yalla_assignment/Screens/screen2.dart';
import 'package:yalla_assignment/Screens/spalsh_screen.dart';
import 'package:yalla_assignment/Screens/test.dart';
import 'package:yalla_assignment/Widgets/customized_drop_down_button.dart.dart';
// import 'package:yalla_assignment/Screens/profile_page.dart';
 import 'Screens/forget_password.dart';
 
 

late final SharedPreferences sharedPreferences;
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenTwo()
      // Test()
        
      //CustomizedDropDownButton()
      //const MyGridView()
      //const SplashScreen()
      // const LoginScreen(sharedPreferences:sharedPreferences),
      // SplashScreen() 
      // HomeBase() 
      //ProfilePage()
     // const LoginScreen()
     // const ForgetPassword(),
    );
  }
}
