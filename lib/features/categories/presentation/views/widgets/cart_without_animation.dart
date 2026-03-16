import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/cart_badge.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CartWithoutAnimation extends StatelessWidget {
  const CartWithoutAnimation({super.key, required this.badgeNumber});
  final int badgeNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.navBarColor,
        shape: BoxShape.circle,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(Iconsax.shopping_cart_copy, color: Colors.white, size: 35),
          Positioned(
            left: 10,
            top: 4,
            child: CartBadge(
              badgeNumber: badgeNumber,
            ),
          ),
        ],
      ),
    );
  }
}

