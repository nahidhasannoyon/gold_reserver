import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/buy_sell_gold_screen/buy_sell_from_p2p_widget.dart';
import 'package:gold_reserver/screens/buy_sell_gold_screen/buy_sell_gold_card_widget.dart';

class BuySellGoldWidget extends StatelessWidget {
  const BuySellGoldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Gold rate is 62,000/- per Bhori',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
            //* Buy/Sell Gold
            const BuySellGoldCardWidget(),

            //* Buy/Sell from P2P
            const BuySellFromP2PWidget(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
