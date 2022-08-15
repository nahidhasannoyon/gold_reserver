import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/buy_sell_gold_screen/buy_gold_screen.dart';
import 'package:gold_reserver/screens/buy_sell_gold_screen/sell_gold_screen.dart';

class BuySellGoldCardWidget extends StatelessWidget {
  const BuySellGoldCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(BuyGoldScreen.routeName);
              },
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Buy Gold',
                    style: TextStyle(
                      color: Color.fromARGB(255, 206, 190, 54),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(SellGoldScreen.routeName);
              },
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Sell Gold',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
