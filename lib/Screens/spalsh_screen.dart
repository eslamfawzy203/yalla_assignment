import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 // late SharedPreferences _sharedPreferences;
  @override
  void didChangeDependencies() async{
   // _sharedPreferences
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.contain,
          'https://th.bing.com/th/id/OIP.jRriUGFXWaQLk5WJydB7pAHaFj?pid=ImgDet&rs=1')
    );
  }
}
