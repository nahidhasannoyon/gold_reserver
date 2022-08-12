import 'package:flutter/material.dart';

class YourMissionWidget extends StatelessWidget {
  const YourMissionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DeviceWidth = MediaQuery.of(context).size.width;
    final LeftPosition = (DeviceWidth - 40) * (0.50 / 2) - 10;
    final temp = LeftPosition * 2;
    final RightPosition = LeftPosition * 2 + (DeviceWidth - 40) * (.50 / 2) + 5;
    // final RightPosition = (DeviceWidth - LeftPosition * 2 - 20 - 20) / 2;
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
              Text(
                '1 Bhori Gold',
                style: Theme.of(context).textTheme.subtitle1,
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
                        value: 0.5,
                        minHeight: 30,
                        backgroundColor: Colors.grey[200],
                        color: Colors.blue,
                        semanticsLabel: '25%',
                        semanticsValue: '35%',
                      ),
                    ),
                    Positioned(
                      left: LeftPosition,
                      right: 0,
                      bottom: 0,
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                    Positioned(
                      left: RightPosition,
                      right: 0,
                      bottom: 0,
                      child: Text(
                        '75%',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ],
                ),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text('Add new mission'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
