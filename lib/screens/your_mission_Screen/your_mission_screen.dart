import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/menu_drawer.dart';
import 'package:gold_reserver/screens/your_mission_Screen/your_mission_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class YourMissionScreen extends StatefulWidget {
  static const routeName = '/your_mission';
  const YourMissionScreen({Key? key}) : super(key: key);

  @override
  State<YourMissionScreen> createState() => _YourMissionScreenState();
}

class _YourMissionScreenState extends State<YourMissionScreen> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Mission'),
      ),
      drawer: const MenuDrawer(),
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: () async {
          await Future.delayed(
            const Duration(
              seconds: 1,
            ),
          );
        },
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: YourMissionWidget(),
          ),
        ),
      ),
    );
  }
}
