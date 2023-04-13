import 'package:flutter/material.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ const CircleAvatar(radius: 60,foregroundImage: NetworkImage('https://th.bing.com/th/id/OIP.5yuRaKCDx9zq85_NR6C0wQHaC7?pid=ImgDet&rs=1'),),const Text("Kindly type your registered phone number"),
        const SizedBox(height:30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              maxLines: 1,
              maxLength: 10,
              decoration: InputDecoration(
                  labelText: "Enter Phone Number",
                  labelStyle: const TextStyle(color: Colors.blue),
                  border: InputBorder.none,
                  prefixIcon: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      InkWell(
                        onTap: () async {
                          final code =
                              await countryPicker.showPicker(context: context);
                              setState(() {
                                countryCode = code;
                              });
                        },
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5)),
                            child:  Text(
                              countryCode?.dialCode ??  '+1',
                              style: const TextStyle(color: Colors.amber),
                            )),
                      )
                    ]),
                  )),
            )
          ),const SizedBox(height: 20),TextButton.icon(onPressed: (){}, icon: const Icon(Icons.message_outlined), label: const Text("Send a message"))
        ],
      ),
    );
  }
}

