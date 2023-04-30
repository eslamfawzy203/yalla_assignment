import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yalla_assignment/Screens/home_base.dart';
import 'package:yalla_assignment/Screens/login_screen.dart';
import 'package:yalla_assignment/local/i_local_storage_caller.dart';
import 'package:yalla_assignment/local/shared_pref_local_storage_caller.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 // late SharedPreferences _sharedPreferences;
  @override
  void didChangeDependencies() async{
 Future.delayed(const Duration(seconds: 1), () async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      SharedPrefsLocalStorageCaller(sharedPreferences: sharedPreferences)
          .restoreData(key: 'user', dataType: DataType.string)
          .then((user) {
        debugPrint('user=$user');
        if (user != null) {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const HomeBase()),
              (route) => false);
        } else {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) => LoginScreen(
                        sharedPreferences: sharedPreferences,
                      )),
              (route) => false);
        }
      });
    });
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
