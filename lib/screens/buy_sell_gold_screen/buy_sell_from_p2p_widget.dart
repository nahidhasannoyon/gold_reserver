import 'package:flutter/material.dart';
import 'package:gold_reserver/page_not_ready.dart';

class BuySellFromP2PWidget extends StatelessWidget {
  const BuySellFromP2PWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(PageNotReady.routeName);
      },
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
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
