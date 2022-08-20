import 'package:flutter/material.dart';
import 'package:gold_reserver/elevated_button_widget.dart';
import 'package:gold_reserver/page_not_ready.dart';
import 'package:gold_reserver/screens/add_cash_screen/add_cash_screen.dart';
import 'package:gold_reserver/screens/history_screen/history_screen.dart';
import 'package:gold_reserver/screens/withdraw_screen.dart/withdraw_screen.dart';
import 'package:gold_reserver/screens/your_wallet_screen/gold_widget.dart';
import 'package:gold_reserver/screens/your_wallet_screen/trade_cash_widget.dart';

class YourWalletWidget extends StatelessWidget {
  const YourWalletWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Your Wallet',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const Divider(
              thickness: 5,
            ),
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            //* Gold
            const GoldWidget(),
            //* Trade Cash
            const CashCardWidget(
              cashType: 'Trade Cash: ',
              cashAmount: '0',
              cashDescription: 'Trade cash is the amount of gold you traded.',
            ),
            //* Request Cash
            const CashCardWidget(
              cashType: 'Request Cash: ',
              cashAmount: '100',
              cashDescription: 'Request cash is the amount of gold you traded.',
            ),
            // todo CashWidget()
            const Text(
              'Cash:  used cash, new cash???',
            ),

            //*  Add Cash
            const ElevatedButtonWidget(
              text: "Add Cash",
              navigateTo: AddCashScreen.routeName,
            ),

            //* History
            const ElevatedButtonWidget(
              text: "History???",
              navigateTo: HistoryScreen.routeName,
            ),

            //* With Draw
            const ElevatedButtonWidget(
              text: "With Draw",
              navigateTo: WithDrawScreen.routeName,
            ),

            //* Return Cash
            const ElevatedButtonWidget(
              text: "Return Cash",
              navigateTo: PageNotReady.routeName,
            ),
          ],
        ),
      ),
    ));
  }
}
