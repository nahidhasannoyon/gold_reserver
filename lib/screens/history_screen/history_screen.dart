import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/history_screen/bdt_history_widget.dart';

class HistoryScreen extends StatefulWidget {
  static const routeName = '/history';
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  var index = 0;
  final screens = [
    const BdtHistoryPage(),
    const Center(
      child: Text('with draw'),
    ),
    const Center(
      child: Text('TRADE '),
    ),
    const Center(
      child: Text('gold'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: screens[index],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue,
          backgroundColor: const Color.fromARGB(255, 250, 114, 114),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child: NavigationBar(
          animationDuration: const Duration(
            milliseconds: 1000,
          ),
          selectedIndex: index,
          onDestinationSelected: ((value) {
            setState(() {
              index = value;
            });
          }),
          destinations: [
            NavigationDestination(
              icon: Image.asset('assets/images/bdt_icon.png', height: 30),
              label: 'BDT',
            ),
            NavigationDestination(
              icon: Image.asset('assets/images/withdraw.png', height: 30),
              label: 'With Draw',
            ),
            NavigationDestination(
              icon: Image.asset('assets/images/tradeCash.png', height: 30),
              label: 'Trade Cash',
            ),
            NavigationDestination(
              icon: Image.asset('assets/images/gold.png', height: 30),
              label: 'Gold',
            ),
          ],
        ),
      ),
    );
  }
}
