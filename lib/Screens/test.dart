//DropdownButton(
//     hint: const Text('Options'),
//     value: keySelectedItem,
//     items: options.map<DropdownMenuItem<String>>((String e) {
//       return DropdownMenuItem<String>(value: e, child: Text(value));
//     }).toList()

//     // DropdownMenuItem(
//     //     value: options, child: Text(options[]))
//     ,
//     onChanged: (value) {
//       setState(() {
//         keySelectedItem = value as int;
//       });
//     })

// DropdownButton(hint: const Text('meals'),
//       //     items: [DropdownMenuItem(value: meals, child: Text(meals.values.toString()))], // Shown as string in one row
//       //     onChanged: (value) {
//       //       setState(() {
//       //         keySelectedItem = value as int;
//       //       });
//       //     },
//       //   )

// items: mealNames.map((String mealnames) {
//   // List passed
//   return DropdownMenuItem(
//     value:
//         mealNames, // the value from list passed will be stored here
//     child: Text(
//         mealnames), // choosed text to be shown as text we can choose any other widget
//   );
// }).toList(),
// onChanged: (newValue) {
//   //incase we choose a new item
//   setState(() {
//     selectedItem = newValue!
//         as String; // As index of list = the  new value stored
//     print(newValue.toString());
//   });
// },

// //  hint: const Text('Sort'),
//   items: [
//     DropdownMenuItem(
//       child: const Text('Age'),
//       value: ages,
//     ),
//     DropdownMenuItem(
//       child: const Text('Name'),
//       value: names,
//     )
//   ],
//   onChanged: (val) {
//     selectedItem = val! ;
//   }

// final StateProvider<int> listProvider = StateProvider<int>((ref) => 0);

// class Test extends ConsumerWidget {
//   Test({super.key});
//   List<String> names = ['Eslam', 'Hassan', 'Raed', 'Farid', 'Lotfy'];
//   List<int> ages = [40, 30, 13, 12, 15];

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     int listIndex = ref.watch(listProvider);
//     return Scaffold(
//       appBar: AppBar(title: const Text('Hello from here'), actions: [
//         DropdownMenu(
//           onSelected: (value) {
//             ref.watch(listProvider.notifier).state =
//             ages.sort();
//           },
//           dropdownMenuEntries: [DropdownMenuEntry(value: ages, label: 'age')],
//         )
//       ]),
//     );
//   }
// }

// DropdownMenuItem(
//   // child: const ListTile(),
//   // onTap: () {

//   },
// )
// DropdownMenu(
//   onSelected: (value) {
//     setState(() {
//       ages.sort();
//     });

//   },
//   dropdownMenuEntries: [DropdownMenuEntry(value: ages, label: 'age')],
// )

// ListView Builder :
// body:// Center(child: Text('Welcome to Screen2'),)
//        ListView.builder(
//       scrollDirection: Axis.vertical,
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Card(
//           color: Colors.blue[600],
//           child: ListTile(
//             leading: const CircleAvatar(
//               backgroundColor: Colors.white,
//             ),
//             title: Text('Item ${index + 1}'),
//             subtitle: Text("Price ${index + 10}"),
//             trailing: const Icon(Icons.drag_indicator_outlined),
//             textColor: Colors.white,
//           ),
//         );
//       },
//     ));

void main() {
  List<String> mealNames = ['Shawerma', 'Burger', 'Pizza', 'Pasta', 'Sausage'];
  List<int> price = [40, 30, 13, 12, 15];
  String selectedItem = 'A-Z';
  bool isSorted = false;
  print(mealNames.reversed.toList());
}
