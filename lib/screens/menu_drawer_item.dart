import 'package:flutter/material.dart';

class MenuDrawerItem extends StatefulWidget {
  final IconData icon;
  final String text;
  final String navigateTo;

  const MenuDrawerItem({
    super.key,
    required this.icon,
    required this.text,
    required this.navigateTo,
  });

  @override
  State<MenuDrawerItem> createState() => _MenuDrawerItemState();
}

class _MenuDrawerItemState extends State<MenuDrawerItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        widget.icon,
        color: Colors.green,
      ),
      title: Text(
        widget.text,
        style: const TextStyle(fontSize: 15),
      ),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(widget.navigateTo);
      },
    );
  }
}
