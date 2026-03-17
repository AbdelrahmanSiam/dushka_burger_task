import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/cart_with_badge.dart';
import 'package:flutter/material.dart';

class CartWithoutAnimation extends StatelessWidget {
  const CartWithoutAnimation({super.key, required this.badgeNumber,required this.onTap});
  final int badgeNumber;
  final void Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.navBarColor,
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: () => onTap(2),
        child: CartWithBadge(
          badgeNumber: badgeNumber,
          iconColor: Colors.white,
          containerColor: Colors.white,
          numberColor: AppColors.navBarColor,
        ),
      ),
    );
  }
}
