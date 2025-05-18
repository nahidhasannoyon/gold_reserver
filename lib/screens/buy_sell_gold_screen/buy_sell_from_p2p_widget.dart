import 'package:flutter/material.dart';
import 'package:gold_reserver/page_not_ready.dart';

class BuySellFromP2PWidget extends StatelessWidget {
  const BuySellFromP2PWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(PageNotReady.routeName);
      },
      child: const Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Buy/Sell from P2P',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
