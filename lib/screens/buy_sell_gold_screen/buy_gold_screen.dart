import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gold_reserver/elevated_button_widget.dart';
import 'package:gold_reserver/page_not_ready.dart';
import 'package:gold_reserver/screens/your_wallet_screen/trade_cash_widget.dart';

class BuyGoldScreen extends StatefulWidget {
  static const routeName = '/buy-gold';
  const BuyGoldScreen({super.key});

  @override
  State<BuyGoldScreen> createState() => _BuyGoldScreenState();
}

class _BuyGoldScreenState extends State<BuyGoldScreen> {
  // final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy Gold'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * .8,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      // todo cash amount dekhabe.
                      Flexible(
                        child: TextFormField(
                          controller: _amountController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Enter Quantity',
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
              const CashCardWidget(
                cashType: 'It will cost: ',
                cashAmount: '10000',
                cashDescription: 'After selling you will get 10000',
              ),
              // todo check mark to show if he is eligible to buy gold.
              const ElevatedButtonWidget(
                text: 'Buy Gold',
                navigateTo: PageNotReady.routeName,
              )
            ],
          ),
        ),
      ),
    );
  }
}
