import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CartRipple extends StatelessWidget {
  const CartRipple({
    super.key,
    required this.curvedAnimation,
  });

  final CurvedAnimation curvedAnimation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60 + (curvedAnimation.value * 50),
      height: 60 + (curvedAnimation.value * 50),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.navBarColor.withOpacity(
          0.25 - (curvedAnimation.value * 0.25),
        ),
      ),
    );
  }
}