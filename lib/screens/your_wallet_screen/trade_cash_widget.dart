import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TradeCashWidget extends StatelessWidget {
  const TradeCashWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 2,
              child: Text(
                "Trade cash: ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Text(
                "0",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow,
                ),
              ),
            ),
            DropdownButton(
              hint: const Text('BDT'),
              // todo jai option select korbe i hsabe hint thbe
              items: const [
                DropdownMenuItem(
                  value: "BDT",
                  child: Text("BDT"),
                ),
                DropdownMenuItem(
                  value: "USD",
                  child: Text("USD"),
                ),
              ],
              onChanged: (value) {
                if (kDebugMode) {
                  print(value);
                }
              },
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('TRADE CASH'),
                    content:
                        const Text('It shows the amount of gold you traded.'),
                    actions: [
                      ElevatedButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(
                Icons.question_mark_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
