import 'package:flutter/material.dart';
// import 'package:yalla_assignment/Screens/home_base.dart';
import 'package:yalla_assignment/Screens/login_screen.dart';
// import 'package:yalla_assignment/Screens/profile_page.dart';
// import 'Screens/forget_password.dart';




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
      home:// HomeBase() 
      //ProfilePage()
      const LoginScreen()
      // ForgetPassword(),
    );
  }
}
