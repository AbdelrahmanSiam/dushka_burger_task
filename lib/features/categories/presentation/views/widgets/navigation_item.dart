import 'package:flutter/material.dart';
class NavigationItem extends StatelessWidget {
  const NavigationItem({
    super.key,
    required this.outlinedIcon,
    required this.iconName,
    required this.selectedIcon,
    this.isSelected = false,
  });
  final IconData outlinedIcon;
  final IconData selectedIcon;
  final String iconName;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(isSelected ? selectedIcon : outlinedIcon, size: 35),
        Text(
          iconName,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
