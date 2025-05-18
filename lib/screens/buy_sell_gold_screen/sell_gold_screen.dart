import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gold_reserver/elevated_button_widget.dart';
import 'package:gold_reserver/page_not_ready.dart';
import 'package:gold_reserver/screens/your_wallet_screen/gold_widget.dart';
import 'package:gold_reserver/screens/your_wallet_screen/trade_cash_widget.dart';

class SellGoldScreen extends StatefulWidget {
  static const routeName = '/sell-gold';
  const SellGoldScreen({super.key});

  @override
  State<SellGoldScreen> createState() => _SellGoldScreenState();
}

class _SellGoldScreenState extends State<SellGoldScreen> {
  // final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sell Gold'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * .8,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              const GoldWidget(),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Text('Enter selling Quantity: '),
                      Flexible(
                        child: TextFormField(
                          controller: _amountController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            // labelText: 'Enter',
                          ),
                          // todo validate if input is larger then gold quantity.
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
              const CashCardWidget(
                cashType: 'You will get: ',
                cashAmount: '10000',
                cashDescription: 'After selling you will get 10000',
              ),
              const ElevatedButtonWidget(
                text: 'Sell Gold',
                navigateTo: PageNotReady.routeName,
              )
            ],
          ),
        ),
      ),
    );
  }
}
