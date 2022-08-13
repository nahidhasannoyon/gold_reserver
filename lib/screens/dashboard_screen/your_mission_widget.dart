import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/dashboard_screen/add_new_mission.dart';

class YourMissionWidget extends StatelessWidget {
  const YourMissionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double missionCompletedPercentage = 20;
    int missionCompleteInt = missionCompletedPercentage.toInt();
    int missionIncomplete = (100 - missionCompleteInt);

    final deviceWidth = MediaQuery.of(context).size.width;
    final leftPosition = (deviceWidth - 40) * ((missionCompleteInt / 100) / 2);
    // final RightPosition = LeftPosition * 2 +
    //     (DeviceWidth - 40) * ((100 - missionCompleteInt) / 100 / 2) -
    //     5;
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Your Mission',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              const Divider(
                thickness: 5,
              ),
              const SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Row(
                children: [
                  Text(
                    '1 Bhori Gold',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const Spacer(),
                  const Text(' 9 days left')
                ],
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 20,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: missionCompleteInt / 100.0,
                        minHeight: 30,
                        backgroundColor: Colors.grey[200],
                        color: Colors.blue,
                      ),
                    ),
                    Positioned(
                      left: leftPosition,
                      right: 0,
                      bottom: 0,
                      child: Text(
                        "$missionCompleteInt% Done",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                    // Positioned(
                    //   left: RightPosition,
                    //   right: 0,
                    //   bottom: 0,
                    //   child: Text(
                    //     missionCompleteInt != 100.0
                    //         ? '$missionIncomplete%'
                    //         : '',
                    //     style: Theme.of(context).textTheme.subtitle1,
                    //   ),
                    // ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AddNewMission.routeName);
                },
                child: const Text('Add new mission'),
              ),
              Text(leftPosition.toString()),
              //// Text(RightPosition.toString()),
              Text(missionCompleteInt.toString()),
              Text(missionIncomplete.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
