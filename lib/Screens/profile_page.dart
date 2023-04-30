import 'package:flutter/material.dart';
//import 'package:yalla_assignment/Screens/screen1.dart';
import 'package:yalla_assignment/Screens/screen2.dart';
import 'package:yalla_assignment/Widgets/customized_text_form_field.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  final GlobalKey<FormState> mykey = GlobalKey<FormState>();
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Form(
        key: mykey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage:
                  const AssetImage("assets/images/Profile Image.png"),
              child: Stack(children: const [
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.camera_alt_rounded),
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 20),
            const Text('Eslam Fawzy',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const SizedBox(height: 20),
            const Text('Cairo',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            const SizedBox(height: 40),
            CustomizedTextFormField(
              myController: controller1,
              validator: (p0) {
                if (p0!.isNotEmpty) {
                  return null;
                } else {
                  return 'This field cannot be empty';
                }
              },
              hintText: 'Kindly enter your name',
              labelText: 'Name',
            ),
            const SizedBox(height: 30),
            CustomizedTextFormField(
              myController: controller2,
              validator: (p0) {
                if (p0!.isNotEmpty) {
                  return null;
                } else {
                  return 'This field cannot be empty';
                }
              },
              hintText: 'Kindly Enter password',
              labelText: 'Password',
            ),
            const SizedBox(height: 30),
            CustomizedTextFormField(
              myController: controller3,
              validator: (p0) {
                if (p0!.isNotEmpty) {
                  return null;
                } else {
                  return 'This field cannot be empty';
                }
              },
              hintText: 'Kindly enter your address',
              labelText: 'Address',
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  if (mykey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenTwo()));
                  }
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
