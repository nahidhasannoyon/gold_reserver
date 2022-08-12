import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/dashboard_screen/your_mission_widget.dart';
import 'package:gold_reserver/screens/menu_drawer.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/dashboard';
  const DashboardScreen({Key? key}) : super(key: key);

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
      body: const SingleChildScrollView(
        child: YourMissionWidget(),
      ),
    );
  }
}
