import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yalla_assignment/Screens/forget_password.dart';
import 'package:yalla_assignment/Screens/home_base.dart';
import 'package:yalla_assignment/Screens/profile_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yalla_assignment/Widgets/customized_text_form_field.dart';
import 'package:yalla_assignment/local/i_local_storage_caller.dart';
import 'package:yalla_assignment/local/shared_pref_local_storage_caller.dart';
import 'package:yalla_assignment/models/login_model.dart';

final StateProvider<bool> visibilityOffProvider =
    StateProvider<bool>((ref) => true); // Here is to be global to the whole App

class LoginScreen extends HookConsumerWidget {
   final SharedPreferences sharedPreferences;
   const LoginScreen({super.key, required this.sharedPreferences});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController emailController = useTextEditingController();
    TextEditingController passwordController = useTextEditingController();
    final bool visibilityOff = ref.watch(visibilityOffProvider);

    // bool visibility = true;
    final mykey = GlobalKey<FormState>();
    
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
                CustomizedTextFormField(
                  myController: emailController,
                  hintText: 'Kindly enter your email',
                  labelText: 'Email',
                  validator: (val) {
                    if (val!.length >= 12 && val.contains('@')) {
                      return null;
                    } else {
                      return 'Enter valid value';
                    }
                  },
                //  showSuffixIcon: false,
                ),
                const SizedBox(height: 30),
                CustomizedTextFormField( 
                  myController: passwordController,
                  labelText: 'Password',
                  onTap: () {
                    ref.watch(visibilityOffProvider.notifier).state =
                        !visibilityOff;
                    //  visibility = !visibility;
                  },
                  obscureText: visibilityOff ? true : false,
                  iconData:
                      visibilityOff ? Icons.visibility_off : Icons.visibility,
                  validator: (val) {
                    if (val!.isNotEmpty) {
                      return null;
                    } else {
                      return "This field cannot be empty";
                    }
                  },
                ),
                
                const SizedBox(height: 20),
                TextButton.icon(
                  icon: const Icon(Icons.login),
                  label: const Text("Login"),
                  onPressed: () async {
                    if (mykey.currentState!.validate()) {
                      await SharedPrefsLocalStorageCaller(
                            sharedPreferences:sharedPreferences)
                        .saveData(
                            key: 'user',
                            value: LogInModel(
                                    email: emailController.text,
                                    password: passwordController.text)
                                .toJson(),
                            dataType: DataType.string)
                        .whenComplete(() => Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => const HomeBase()),
                          (_) => false));
                      // saveAndPrintPassword();
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => ProfilePage()),
                          (_) => false);
                    },
                    icon: const Icon(Icons.account_circle),
                    label: const Text('Create Account')),
                const SizedBox(height: 20),
                TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgetPassword()));
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


 

  // @override
  // void didChangeDependencies() async {
  //   prefs = await SharedPreferences.getInstance(); // Here is to initialization
  //   super.didChangeDependencies();
  // }

 

  

