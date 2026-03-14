import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({super.key, required this.icon, required this.iconName});
  final IconData icon;
  final String iconName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon , size: 35),
        Text(iconName),
      ],
    );
  }
}
