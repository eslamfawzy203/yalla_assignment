import 'package:flutter/material.dart';

class CustomizedContainer extends StatelessWidget {
  const CustomizedContainer({super.key});
// (top: BorderSide(color: Colors.black)


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)), //const CircleBorder(),
      child: Column(children: [
        Stack(
          children: [
            SizedBox(
              child: Image.network(
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topCenter,
                  'https://th.bing.com/th/id/R.5ecb01c69b75b64376571b681418eca1?rik=oyd5fyFRw3dUrg&pid=ImgRaw&r=0'),
            ),
            const Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(color: Colors.grey, Icons.favorite),
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Happiness Meal'),
            Row(
              children: [
                Text(String.fromCharCodes(Runes('\u0024'))), // To be able to print the $ within a text 
                const Text(('29'))
              ],
            ),
            IntrinsicHeight(
              child: Row(
                children: const [
                  Text('4.9'),
                  Icon(Icons.star),
                //  Text('|'),
                 VerticalDivider(color: Colors.black,thickness: 1,), // Will not be shown up when use in Raw ,
                 // Must wrap the widget with IntrinsicHeight
                  Icon(Icons.alarm),
                  Text('20-30min')
                ],
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
