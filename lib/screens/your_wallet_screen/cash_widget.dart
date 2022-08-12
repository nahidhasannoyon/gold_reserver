import 'package:flutter/material.dart';

class CashWidget extends StatelessWidget {
  const CashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cash'),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(5.0),
      //   child: Center(
      //       child: Card(
      //     child: Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Column(
      //         children: [
      //           //* Gold
      //           const Text('Cash: ', style: TextStyle(fontSize: 20)),
      //           const Text('0',
      //               style: TextStyle(fontSize: 20, color: Colors.yellow)),
      //           DropdownButton(
      //             hint: const Text('gm'),
      //             // todo jai option select korbe i hsabe hint thbe
      //             items: const [
      //               DropdownMenuItem(
      //                 value: "gm",
      //                 child: Text("gm"),
      //               ),
      //               DropdownMenuItem(
      //                 value: "ounce",
      //                 child: Text("ounce"),
      //               ),
      //             ],
      //             onChanged: (value) {
      //               print(value);
      //             },
      //           ),
      //           IconButton(
      //             onPressed: () {
      //               showDialog(
      //                 context: context,
      //                 builder: (context) => AlertDialog(
      //                   title: const Text('Cash'),
      //                   content:
      //                       const Text('It shows the amount of cash you have.'),
      //                   actions: [
      //                     FlatButton(
      //                       child: const Text('OK'),
      //                       onPressed: () {
      //                         Navigator.of(context).pop();
      //                       },
      //                     ),
      //                   ],
      //                 ),
      //               );
      //             },
      //             icon: const Icon(
      //               Icons.question_mark_outlined,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   )),
      // ),
    );
  }
}
