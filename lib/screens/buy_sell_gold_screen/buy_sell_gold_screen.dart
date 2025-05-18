import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/buy_sell_gold_screen/buy_sell_gold_widget.dart';
import 'package:gold_reserver/screens/menu_drawer.dart';

class BuySellGoldScreen extends StatelessWidget {
  // todo convert it to stateful widget cz the gold rate will be dynamic, changing every sec.
  static const routeName = '/buy_sell_gold';
  const BuySellGoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy Sell Gold'),
      ),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const BuySellGoldWidget(),

            //* Gold Rate Graph
            Image.asset(
              'assets/images/gold_rate_graph.png',
              fit: BoxFit.cover,
            ),
            // todo change this image to real time data graph
          ],
        ),
      ),
    );
  }
}
