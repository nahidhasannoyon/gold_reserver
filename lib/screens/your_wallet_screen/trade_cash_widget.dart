import 'package:flutter/material.dart';

class CashCardWidget extends StatelessWidget {
  final cashType;
  final cashAmount;
  final cashDescription;

  const CashCardWidget({
    super.key,
    required this.cashType,
    required this.cashAmount,
    required this.cashDescription,
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
            Expanded(
              flex: 2,
              child: Text(
                cashType,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                cashAmount,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.yellow,
                ),
              ),
            ),
            const Text('BDT', style: TextStyle(fontSize: 18)),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(cashType),
                    content: Text(cashDescription),
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
