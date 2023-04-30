// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:yalla_assignment/Screens/grid_view.dart';

// class CustomizedDropDownButton extends StatefulWidget {
//   const CustomizedDropDownButton({super.key});

//   @override
//   State<CustomizedDropDownButton> createState() => _CustomizedDropDownButtonState();
// }

// class _CustomizedDropDownButtonState extends State<CustomizedDropDownButton> {
//   // List<String> options = ['A-z', 'Price'];
//   List<String> mealNames = ['Shawerma', 'Burger', 'Pizza', 'Pasta', 'Sausage'];
//   List<int> price = [40, 30, 13, 12, 15];

//   Map<String, int> meals = {
//     "Shawerma": 40,
//     'Burger': 30,
//     'Pizza': 80,
//     'Pasta': 50
//   };
//   String selectedItem = 'A-Z'; //innitialized to be the index
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Hello from here'), actions: [
//         DropdownButton(
//             hint: const Text('Sort by'),
//             items: ['A-Z', 'Price']
//                 // options
//                 .map((e) => DropdownMenuItem(child: Text('$e'), value: e))
//                 .toList(),
//             onChanged: (String? val) {
//               setState(() {
//                 selectedItem = val!;
//               });
//             },
//             value: selectedItem)
//         //
//       ]),
//     );
//   }
// }

