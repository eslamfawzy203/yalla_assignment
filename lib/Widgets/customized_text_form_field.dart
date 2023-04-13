import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomizedTextFormField extends StatelessWidget {
  final TextEditingController myController;
  String? Function(String?)? validator;
  String hintText, labelText;
  int? maxLenght;
  bool? obscureText = false;

  CustomizedTextFormField({
    super.key,
    this.validator,
    required this.myController,
    required this.hintText,
    required this.labelText,
    this.maxLenght,
     this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: const OutlineInputBorder()),
      maxLength: maxLenght,
      validator: validator,
      
    );
  }
}
