import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ToggleCircle extends StatelessWidget {
  const ToggleCircle({super.key, required this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return  Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: BoxBorder.all(color: isSelected? AppColors.primary : Colors.black, width: 2),
              color: AppColors.backgroundColor,
            ),
            child: isSelected ? Center(
              child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
              ),
                        ),
            ):SizedBox(),
          );
  }
}
