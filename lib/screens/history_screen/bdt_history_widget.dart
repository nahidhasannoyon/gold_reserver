import 'package:flutter/material.dart';
import 'package:gold_reserver/page_not_ready.dart';

class BdtHistoryPage extends StatelessWidget {
  const BdtHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Card(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Filter By'),
                  ),
                  const Spacer(),
                  TextButton(
                    style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Colors.red)))),
                    onPressed: () {
                      Navigator.of(context).pushNamed(PageNotReady.routeName);
                    },
                    child: const Text("All"),
                  ),
                  const Spacer(),
                  TextButton(
                    style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Colors.red)))),
                    onPressed: () {
                      Navigator.of(context).pushNamed(PageNotReady.routeName);
                    },
                    child: const Text("Only Purchased"),
                  ),
                  const Spacer(),
                  TextButton(
                    style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Colors.red)))),
                    onPressed: () {
                      Navigator.of(context).pushNamed(PageNotReady.routeName);
                    },
                    child: const Text("Only Sell"),
                  ),
                ],
              ),
            ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Date time ',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      'Quantity ',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .7,
              child: Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              '220-08-2022',
                              style: TextStyle(fontSize: 18),
                            ),
                            Spacer(),
                            Text(
                              '11090',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    );
                  },

                  // child: ListView(
                  //   children: const [
                  //     ListTile(
                  //       leading: Text('2020-01-01'),
                  //       trailing: Text('100'),
                  //     ),
                  //     ListTile(
                  //       leading: Text('2020-01-01'),
                  //       trailing: Text('100'),
                  //     ),
                  //   ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
