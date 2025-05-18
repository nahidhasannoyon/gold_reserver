import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gold_reserver/elevated_button_widget.dart';
import 'package:gold_reserver/screens/selected_shop_screen/selected_shop_screen.dart';

class WithDrawSelectionScreen extends StatefulWidget {
  static const routeName = '/withdraw-selection';
  const WithDrawSelectionScreen({super.key});

  @override
  State<WithDrawSelectionScreen> createState() =>
      _WithDrawSelectionScreenState();
}

class _WithDrawSelectionScreenState extends State<WithDrawSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Withdraw selection'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Card(
            elevation: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'District:- ',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            DropdownButton(
                              alignment: Alignment.center,
                              borderRadius: BorderRadius.circular(15),
                              hint: const Text(
                                'Select district',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: 'Dhaka',
                                  child: Text(
                                    'Dhaka',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'Syllet',
                                  child: Text(
                                    'Trade cash',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                              onTap: null,
                              onChanged: ((value) {
                                if (kDebugMode) {
                                  print(value);
                                }
                              }),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 5,
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Police Station:- ',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            DropdownButton(
                              alignment: Alignment.center,
                              borderRadius: BorderRadius.circular(15),
                              hint: const Text(
                                'Select Police Station',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: 'Badda',
                                  child: Text(
                                    'Badda',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'Gulshan',
                                  child: Text(
                                    'Gulshan',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'Rampura',
                                  child: Text(
                                    'Rampura',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                              onTap: null,
                              onChanged: ((value) {
                                if (kDebugMode) {
                                  print(value);
                                }
                              }),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 5,
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Show No:- ",
                                  style: TextStyle(fontSize: 20)),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter show no.',
                                ),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: ElevatedButtonWidget(
                            text: "Select Shop",
                            navigateTo: SelectedShopScreen.routeName,
                          ),
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
