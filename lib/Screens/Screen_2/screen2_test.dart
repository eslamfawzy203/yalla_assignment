//-------SUDDEN Death-----------------------

// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// //import 'package:yalla_assignment/functions/functions.dart';

// class meal {
//   meal({required this.name, required this.price});
//   final String name;
//   final int price;
// }

// final _meals = [
//   meal(name: 'Shawerma', price: 40),
//   meal(name: 'Sausage', price: 70),
//   meal(name: 'Pizza', price: 90),
//   meal(name: 'Pasta', price: 60),
//   meal(name: 'Grilled Chicken', price: 120)
// ];

// enum ProductSortType {
//   name,
//   price,
// }

// final productSortTypePrivider =
//     StateProvider<ProductSortType>((ref) => ProductSortType.name);
// final productsPrivider = StateProvider<List<meal>>((ref) {
//   final sortType = ref.watch(productSortTypePrivider);
//   if (sortType == ProductSortType.name) {
//     _meals.sort((a, b) => a.name.compareTo(b.name));
//   } else {
//     _meals.sort((a, b) => a.price.compareTo(b.price));
//   }
//   return _meals;
// });

// class ScreenTwoTest extends ConsumerWidget {
//   const ScreenTwoTest({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Choose from here =>'), actions: [
//           DropdownButton<ProductSortType>(
//             value: ref.watch(productSortTypePrivider),
//             onChanged: (value) =>
//                 ref.read(productSortTypePrivider.notifier).state = value!,
//             items: const [
//               DropdownMenuItem(
//                   value: ProductSortType.name,
//                   child: Icon(Icons.sort_by_alpha)),
//               DropdownMenuItem(
//                   value: ProductSortType.price,
//                    child: Icon(Icons.sort))
//             ],
//           )
//         ]),
//         body: ListView.builder(
//             scrollDirection: Axis.vertical,
//             itemCount: _meals.length,
//             itemBuilder: (context, index) {
//               //  List<String> key = meals.keys.toList();
//               //  String value = key[index];
//               final meal = _meals[index];
//               return Card(
//                 color: Colors.blue,
//                 child: ListTile(
//                   title: Text(meal.name),
//                   subtitle: Text('${meal.price} \$'),
//                   trailing: const Icon(Icons.drag_indicator_outlined),
//                   textColor: Colors.white,
//                 ),
//               );
//             }));
//   }
// }
