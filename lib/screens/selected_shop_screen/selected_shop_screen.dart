import 'package:flutter/material.dart';
import 'package:gold_reserver/page_not_ready.dart';

class SelectedShopScreen extends StatefulWidget {
  static const routeName = '/selected_shop';
  const SelectedShopScreen({super.key});

  @override
  State<SelectedShopScreen> createState() => _SelectedShopScreenState();
}

class _SelectedShopScreenState extends State<SelectedShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Shop'),
      ),
      body: Card(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.shop),
                    title: Text('Khan Jeweler\'s Shop'),
                    subtitle: Text('Dhaka'),
                  ),
                  const Divider(
                    thickness: 5,
                  ),
                  Card(
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text('Appointment Time:  '),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Set appointment time',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                PageNotReady.routeName,
                              );
                            },
                            child: const Text('Cancel Request'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('Purchase request',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      subtitle: Text(
                        'OTP: 1109020',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
