import 'package:dusks_burger_task/core/utils/app_colors.dart';
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
        Icon(
          isSelected ? selectedIcon : outlinedIcon,
          color: isSelected ? AppColors.navBarColor : Colors.black87,
          size: 30,
        ),
        Text(
          iconName,
          style: TextStyle(
            color: isSelected ? AppColors.navBarColor : Colors.black87,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
