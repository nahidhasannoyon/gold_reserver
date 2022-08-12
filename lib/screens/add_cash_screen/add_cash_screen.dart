import 'package:flutter/material.dart';

class AddCashScreen extends StatefulWidget {
  static const routeName = '/add-cash';
  const AddCashScreen({Key? key}) : super(key: key);

  @override
  State<AddCashScreen> createState() => _AddCashScreenState();
}

class _AddCashScreenState extends State<AddCashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Method'),
      ),
    );
  }
}
