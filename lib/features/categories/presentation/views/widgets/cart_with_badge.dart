import 'package:dusks_burger_task/features/categories/presentation/views/widgets/cart_badge.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CartWithBadge extends StatelessWidget {
  const CartWithBadge({
    super.key,
    required this.badgeNumber,
    required this.iconColor,
    required this.containerColor,
    required this.numberColor,
  });

  final int badgeNumber;
  final Color iconColor, containerColor, numberColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 65,
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Center(
              child: Icon(Iconsax.shopping_cart_copy, color: iconColor, size: 35),
            ),
            Positioned(
              left: 5,
              child: CartBadge(
                badgeNumber: badgeNumber,
                containerColor: containerColor,
                numberColor: numberColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
