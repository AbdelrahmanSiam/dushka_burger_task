import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CartBadge extends StatelessWidget {
  const CartBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: BoxBorder.all(color: AppColors.navBarColor),
      ),
      child: Text(
        "0",
        style: TextStyle(color: AppColors.navBarColor),
      ),
    );
  }
}
