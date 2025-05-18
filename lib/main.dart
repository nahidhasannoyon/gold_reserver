import 'package:flutter/material.dart';
import 'package:gold_reserver/page_not_ready.dart';
import 'package:gold_reserver/screens/add_cash_screen/add_cash_screen.dart';
import 'package:gold_reserver/screens/buy_sell_gold_screen/buy_gold_screen.dart';
import 'package:gold_reserver/screens/buy_sell_gold_screen/buy_sell_gold_screen.dart';
import 'package:gold_reserver/screens/buy_sell_gold_screen/sell_gold_screen.dart';
import 'package:gold_reserver/screens/dashboard_screen/add_new_mission.dart';
import 'package:gold_reserver/screens/dashboard_screen/dashboard_screen.dart';
import 'package:gold_reserver/screens/edit_profile_screen.dart/edit_profile_screen.dart';
import 'package:gold_reserver/screens/history_screen/history_screen.dart';
import 'package:gold_reserver/screens/profile_screen.dart';
import 'package:gold_reserver/screens/selected_shop_screen/selected_shop_screen.dart';
import 'package:gold_reserver/screens/withdraw_screen.dart/withdraw_screen.dart';
import 'package:gold_reserver/screens/withdraw_selection_screen/withdraw_selection_screen.dart';
import 'package:gold_reserver/screens/your_mission_Screen/your_mission_screen.dart';
import 'package:gold_reserver/screens/your_wallet_screen/your_wallet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        PageNotReady.routeName: (context) => const PageNotReady(),
        BuySellGoldScreen.routeName: (context) => const BuySellGoldScreen(),
        BuyGoldScreen.routeName: (context) => const BuyGoldScreen(),
        SellGoldScreen.routeName: (context) => const SellGoldScreen(),
        EditProfileScreen.routeName: (context) => const EditProfileScreen(),
        WithDrawScreen.routeName: (context) => const WithDrawScreen(),
        WithDrawSelectionScreen.routeName: (context) =>
            const WithDrawSelectionScreen(),
        SelectedShopScreen.routeName: (context) => const SelectedShopScreen(),
        YourMissionScreen.routeName: (context) => const YourMissionScreen(),
      },
    );
  }
}
