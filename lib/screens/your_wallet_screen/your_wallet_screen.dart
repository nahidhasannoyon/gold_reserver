import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/menu_drawer.dart';
import 'package:gold_reserver/screens/your_wallet_screen/your_wallet_widget.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: YourWalletWidget(),
        ),
      ),
    );
  }
}
