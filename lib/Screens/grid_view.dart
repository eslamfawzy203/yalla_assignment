import 'package:flutter/material.dart';
import 'package:yalla_assignment/Widgets/customized_container.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return const CustomizedContainer();
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 1),
        ));
  }
}
