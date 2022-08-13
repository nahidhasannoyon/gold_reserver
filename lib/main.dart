import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/add_cash_screen/add_cash_screen.dart';
import 'package:gold_reserver/screens/dashboard_screen/add_new_mission.dart';
import 'package:gold_reserver/screens/dashboard_screen/dashboard_screen.dart';
import 'package:gold_reserver/screens/history_screen/history_screen.dart';
import 'package:gold_reserver/screens/profile_screen.dart';
import 'package:gold_reserver/screens/your_wallet_screen/your_wallet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardScreen(),
      routes: {
        DashboardScreen.routeName: (context) => const DashboardScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        YourWalletScreen.routeName: (context) => const YourWalletScreen(),
        AddCashScreen.routeName: (context) => const AddCashScreen(),
        HistoryScreen.routeName: (context) => const HistoryScreen(),
        AddNewMission.routeName: (context) => const AddNewMission(),
      },
    );
  }
}
