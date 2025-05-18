import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GoldWidget extends StatelessWidget {
  const GoldWidget({
    super.key,
  });

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
                "Gold: ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Text(
                "0",
                style: TextStyle(fontSize: 20, color: Colors.yellow),
              ),
            ),
            DropdownButton(
              hint: const Text('gm'),
              isExpanded: false,
              // todo jai option select korbe i hsabe hint thbe
              items: const [
                DropdownMenuItem(
                  enabled: true,
                  value: "gm",
                  child: Text("gm"),
                ),
                DropdownMenuItem(
                  value: "ounce",
                  child: Text("ounce"),
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
                    title: const Text('Gold'),
                    content:
                        const Text('It shows the amount of gold you have.'),
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
