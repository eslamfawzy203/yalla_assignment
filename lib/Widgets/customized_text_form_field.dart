import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomizedTextFormField extends StatelessWidget {
  final TextEditingController myController;
  String? Function(String?)? validator;
  String? hintText, labelText;
  int? maxLenght;
  InputDecoration? decoration;
  void Function()? onTap;
  final IconData? iconData;
  final Widget? suffix;
  bool? obscureText;

  CustomizedTextFormField(
      {super.key,
      this.validator,
      required this.myController,
      this.hintText,
      required this.labelText,
      this.maxLenght,
      this.obscureText,
      this.decoration,
      this.onTap,
      this.iconData,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: myController,
      decoration: InputDecoration(
          suffixIcon: iconData != null ? InkWell(onTap: onTap, child: Icon(iconData)): const SizedBox(),
          labelText: labelText,
          hintText: hintText,
          border: const OutlineInputBorder()),
      maxLength: maxLenght,
      validator: validator,
    );
  }
}
