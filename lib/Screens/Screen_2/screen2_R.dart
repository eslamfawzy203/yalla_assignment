// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yalla_assignment/Screens/Screen_2/product.dart';

final productSortTypeProvider = StateProvider<ProductSortType>(
  // We return the default sort type, here name.
  (ref) => ProductSortType.name,
);

final productsProvider = Provider<List<Meal>>((ref) {
  final sortType = ref.watch(productSortTypeProvider);
  switch (sortType) {
    case ProductSortType.name:
      //return _products.sorted((a, b) => a.name.compareTo(b.name));
      return meals.sorted((a, b) => a.name.compareTo(b.name));
    case ProductSortType.price:
      return meals.sorted((a, b) => a.price.compareTo(b.price));
  }
});

class ScreenTwoR extends ConsumerWidget {
  const ScreenTwoR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          DropdownButton<ProductSortType>(
            value: ref.watch(productSortTypeProvider),
            onChanged: (value) =>
                ref.read(productSortTypeProvider.notifier).state = value!,
            items: const [
              DropdownMenuItem(
                value: ProductSortType.name,
                child: Icon(Icons.sort_by_alpha),
              ),
              DropdownMenuItem(
                value: ProductSortType.price,
                child: Icon(Icons.sort),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final meal = products[index];
          return Card(color: Colors.blueAccent,
            child: ListTile(
              title: Text(meal.name),
              subtitle: Text('${meal.price}'),
            ),
          );
        },
      ),
    );
  }
}
