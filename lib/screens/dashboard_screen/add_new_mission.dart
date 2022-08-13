import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddNewMission extends StatefulWidget {
  static const routeName = '/add-new-mission';
  const AddNewMission({Key? key}) : super(key: key);

  @override
  State<AddNewMission> createState() => _AddNewMissionState();
}

class _AddNewMissionState extends State<AddNewMission> {
  final _amountController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  bool isDatePicked = false;

  void _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2200),
    ).then(
      (pickedDate) {
        if (pickedDate == null) {
          isDatePicked = false;
          return;
        } else {
          setState(() {
            _selectedDate = pickedDate;
            isDatePicked = true;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Mission'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * .8,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            controller: _amountController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Enter target amount',
                            ),
                          ),
                        ),
                        DropdownButton(
                          hint: const Text('gm'),
                          items: const [
                            DropdownMenuItem(
                              value: 'gm',
                              child: Text('gm'),
                            ),
                            DropdownMenuItem(
                              value: 'ounce',
                              child: Text('ounce'),
                            )
                          ],
                          onTap: null,
                          onChanged: ((value) {
                            if (kDebugMode) {
                              print(value);
                            }
                          }),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Text(
                            isDatePicked == false
                                ? "No Date Chosen!!!"
                                : 'Picked Date: ${DateFormat.yMd().format(_selectedDate)}',
                          ),
                        ),
                        TextButton(
                          child: const Text(
                            'Choose Date',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () => _datePicker(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
