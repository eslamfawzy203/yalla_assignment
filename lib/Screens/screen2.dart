import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yalla_assignment/functions/functions.dart';

Map<String, int> meals = {
  "Shawerma": 40,
  'Burger': 30,
  'Pizza': 80,
  'Pasta': 50
};
//List<String> mealNames = ['Shawerma', 'Burger', 'Pizza', 'Pasta', 'Sausage'];
//List<int> price = [40, 30, 13, 12, 15];
String selectedItem = 'A-Z';
//bool isSorted = false;

final StateProvider<String> selectProvider = StateProvider<String>((ref) => '');

class ScreenTwo extends ConsumerWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String select = ref.watch(selectProvider);
    return Scaffold(
        appBar: AppBar(title: const Text('Hello from here'), actions: [
          DropdownButton(
              hint: const Text('Sort by'),
              items: ['A-Z', 'Price']
                  .map((e) => DropdownMenuItem(child: Text('$e'), value: e))
                  .toList(),
              onChanged: (String? val) {
                ref.watch(selectProvider.notifier).state = selectedItem = val!;
                // Functions().alphabaticalSorting = select as Map<String, int>;
               // ref.watch(selectProvider.notifier).state = Functions().alphabaticalSorting as String;

              //  ref.watch(selectProvider.notifier).update((state) => Functions()
               //     .alphabaticalSorting
                //    .toString()); // to be sure it prints
                print(select); // prints the value selected A-z || Price
                // Functions().alphabaticalSorting();
                // Functions().lowToHighPriceSortig();
                //              alphabaticalSorting() => Map.fromEntries(
                // meals.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));
              },
              value: selectedItem)
          //
        ]),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: meals.length, // 10,
          itemBuilder: (context, index) {
            // final item = mealNames[index];
            // final price1 = price[index];
            List<String> key = meals.keys.toList();
            String value = key[index];
            return Card(
              color: Colors.blue[600],
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                title: Text(meals.keys.toList()[index]),
                // Text('Item ${index + 1}'),
                subtitle: Text('Price ${meals[value]}'),
                // Text("Price ${index + 10}"),
                trailing: const Icon(Icons.drag_indicator_outlined),
                textColor: Colors.white,
              ),
            );
          },
        ));
  }
}
