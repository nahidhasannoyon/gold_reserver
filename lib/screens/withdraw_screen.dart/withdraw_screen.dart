import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/withdraw_selection_screen/withdraw_selection_screen.dart';
import 'package:gold_reserver/screens/your_wallet_screen/trade_cash_widget.dart';

class WithDrawScreen extends StatefulWidget {
  static const routeName = '/withdraw';
  const WithDrawScreen({super.key});

  @override
  State<WithDrawScreen> createState() => _WithDrawScreenState();
}

class _WithDrawScreenState extends State<WithDrawScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Withdraw'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent, width: 2),
                      ),
                      child: const Center(
                        child: Text(
                          'From',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent, width: 2),
                      ),
                      child: const Center(
                        child: Text(
                          'To',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter amount',
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            '100',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          DropdownButton(
                            alignment: Alignment.center,
                            borderRadius: BorderRadius.circular(15),
                            hint: const Text(
                              'Gold',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            items: const [
                              DropdownMenuItem(
                                value: 'Gold',
                                child: Text(
                                  'Gold',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Trade cash',
                                child: Text(
                                  'Trade cash',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Cash',
                                child: Text(
                                  'Cash',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                            onTap: null,
                            onChanged: ((value) {
                              if (kDebugMode) {
                                print(value);
                              }
                            }),
                          ),
                          const Spacer(),
                          DropdownButton(
                            alignment: Alignment.center,
                            borderRadius: BorderRadius.circular(15),
                            hint: const Text(
                              'G-Bar',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            items: const [
                              DropdownMenuItem(
                                value: 'G-Bar',
                                child: Text(
                                  'G-Bar',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Trade cash',
                                child: Text(
                                  'Trade cash',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Cash',
                                child: Text(
                                  'Cash',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Gold Good',
                                child: Text(
                                  'Gold Good',
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
                      const Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Available or not available'),
                          // todo checking kore available hole green check dekhabe and available bolbe ar na hole cross and not available dekhabe.
                        ],
                      ),
                      const CashCardWidget(
                          cashType: 'Charge: ',
                          cashAmount: '2',
                          cashDescription: 'Our charge.'),
                      const CashCardWidget(
                          cashType: 'Final Amount',
                          cashAmount: '100',
                          cashDescription: 'Final Amount'),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            WithDrawSelectionScreen.routeName,
                          );
                        },
                        child: const Text('Withdraw'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
