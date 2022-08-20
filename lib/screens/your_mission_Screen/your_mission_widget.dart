import 'package:flutter/material.dart';
import 'package:gold_reserver/elevated_button_widget.dart';
import 'package:gold_reserver/screens/dashboard_screen/add_new_mission.dart';
import 'package:percent_indicator/percent_indicator.dart';

class YourMissionWidget extends StatelessWidget {
  const YourMissionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                'Your Mission',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const Divider(
              thickness: 5,
            ),
            ListView.builder(
              itemBuilder: ((context, index) {
                return Card(
                  elevation: 5,
                  child: Dismissible(
                    key: Key(index.toString()),
                    confirmDismiss: (direction) {
                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Are you sure?'),
                            content: const Text(
                                'Do you want to delete this mission?'),
                            actions: [
                              TextButton(
                                child: const Text('No'),
                                onPressed: () {
                                  Navigator.of(context).pop(false);
                                },
                              ),
                              TextButton(
                                child: const Text('Yes'),
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    background: Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          'Delete',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    onDismissed: (direction) {
                      Scaffold.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Mission dismissed'),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: SizedBox(
                        height: 200.0,
                        child: CircularPercentIndicator(
                          animation: true,
                          animationDuration: 2000,
                          radius: 25.0,
                          lineWidth: 10.0,
                          percent: 0.8,
                          center: const Text("80%"),
                          backgroundColor: Colors.grey,
                          progressColor: Colors.blue,
                        ),
                      ),
                      title: const Text('For MOM'),
                      subtitle: const Text('9 month\'s left'),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Traget: 1 Bhori'),
                          Text('Progress: .5 Bhori'),
                        ],
                      ),
                    ),
                  ),
                );
              }),
              itemCount: 1,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
            const ElevatedButtonWidget(
              text: "Add New Mission",
              navigateTo: AddNewMission.routeName,
            )
          ],
        ),
      ),
    );
  }
}
