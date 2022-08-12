import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/add_cash_screen/add_cash_screen.dart';
import 'package:gold_reserver/screens/history_screen/history_screen.dart';
import 'package:gold_reserver/screens/menu_drawer.dart';
import 'package:gold_reserver/screens/your_wallet_screen/gold_widget.dart';
import 'package:gold_reserver/screens/your_wallet_screen/trade_cash_widget.dart';

class YourWalletScreen extends StatefulWidget {
  static const routeName = '/your_wallet';
  const YourWalletScreen({Key? key}) : super(key: key);

  @override
  State<YourWalletScreen> createState() => _YourWalletScreenState();
}

class _YourWalletScreenState extends State<YourWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(
        title: const Text('Your Wallet'),
      ),
      backgroundColor: Colors.grey,
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Center(
              child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //* Gold
                  const GoldWidget(),
                  //* Trade Cash
                  const TradeCashWidget(),
                  // todo CashWidget(),
                  //*  Add Cash
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AddCashScreen.routeName);
                    },
                    child: const Text('Add Cash'),
                  ),
                  //* History
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(HistoryScreen.routeName);
                    },
                    child: const Text('History'),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
