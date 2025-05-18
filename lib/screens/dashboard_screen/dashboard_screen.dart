import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/buy_sell_gold_screen/buy_sell_gold_widget.dart';
import 'package:gold_reserver/screens/your_mission_Screen/your_mission_widget.dart';
import 'package:gold_reserver/screens/menu_drawer.dart';
import 'package:gold_reserver/screens/your_wallet_screen/your_wallet_widget.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/dashboard';
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      backgroundColor: Colors.grey,
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              YourMissionWidget(),
              BuySellGoldWidget(),
              YourWalletWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
