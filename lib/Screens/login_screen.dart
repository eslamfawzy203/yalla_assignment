import 'package:flutter/material.dart';
import 'package:yalla_assignment/Screens/forget_password.dart';
//import 'package:yalla_assignment/Screens/forget_password.dart';
import 'package:yalla_assignment/Screens/home_base.dart';
import 'package:yalla_assignment/Screens/profile_page.dart';
//import 'package:yalla_assignment/Screens/screen1.dart';
//import '../Widgets/customized_text_form_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final mykey = GlobalKey<FormState>();
  late SharedPreferences prefs;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: mykey,
            child: ListView(
              children: <Widget>[
                const CircleAvatar(
                  radius: 80,
                  foregroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.jRriUGFXWaQLk5WJydB7pAHaFj?pid=ImgDet&rs=1'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Email"),
                    controller: emailController,
                    validator: (val) {
                      if (val!.length >= 12 && val.contains('@')) {
                        return null;
                      } else {
                        return 'Enter valid value';
                      }
                    }),
                const SizedBox(height: 30),
                TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    validator: (val) {
                      if (val!.isNotEmpty) {
                        return null;
                      } else {
                        return "This field cannot be empty";
                      }
                    },
                    decoration: const InputDecoration(suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(), labelText: "Password")),
                const SizedBox(height: 20),
                TextButton.icon(
                  icon: const Icon(Icons.login),
                  label: const Text("Login"),
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => const HomeBase()),
                          (_) => false);
                     // prefs.setString('Password', passwordController.text);
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton.icon(
                    onPressed: () {
                      if (mykey.currentState!.validate()) {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (_) => ProfilePage()),
                            (_) => false);
                      }
                    },
                    icon: const Icon(Icons.account_circle),
                    label: const Text('Create Account')),
                const SizedBox(height: 20),
                TextButton.icon(
                    onPressed: () {
                      if (mykey.currentState!.validate()) {
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(
                        //       builder: (_) =>
                        //           const ForgetPassword(),
                        // ),
                        // (_) => false);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetPassword()));
                      }
                    },
                    icon: const Icon(Icons.password),
                    label: const Text('Forget Password ?'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
