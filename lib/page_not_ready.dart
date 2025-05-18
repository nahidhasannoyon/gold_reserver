import 'package:flutter/material.dart';

class PageNotReady extends StatelessWidget {
  static const routeName = '/page_not_ready';
  const PageNotReady({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page not ready'),
      ),
      body: const Center(
        child: Text(
          'Page not ready',
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
