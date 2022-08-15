import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final String navigateTo;

  const ElevatedButtonWidget({
    super.key,
    required this.text,
    required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(navigateTo);
      },
      child: Text(text),
    );
  }
}
