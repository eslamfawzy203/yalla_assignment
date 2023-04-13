import 'package:flutter/material.dart';
class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body:// Center(child: Text('Welcome to Screen2'),)
       ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.blue[600],
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
            title: Text('Item ${index + 1}'),
            subtitle: Text("Price ${index + 10}"),
            trailing: const Icon(Icons.drag_indicator_outlined),
            textColor: Colors.white,
          ),
        );
      },
    ));
  }
}