import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/dashboard_screen/dashboard_screen.dart';
import 'package:gold_reserver/screens/menu_drawer_item.dart';
import 'package:gold_reserver/screens/profile_screen.dart';
import 'package:gold_reserver/screens/your_wallet_screen/your_wallet_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/drawer_header.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile_icon.png'),
                ),
                title: Text(
                  'Nahid Hasan Noyon',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'nahidhasannoyon20@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const Divider(thickness: 3),
          const MenuDrawerItem(
            icon: Icons.dashboard_rounded,
            text: 'Dashboard',
            navigateTo: DashboardScreen.routeName,
          ),
          const Divider(thickness: 3),
          const MenuDrawerItem(
            icon: Icons.account_balance_wallet,
            text: 'Your Wallet',
            navigateTo: YourWalletScreen.routeName,
          ),
        ],
      ),
    );
  }
}
