import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -MediaQuery.of(context).size.height * 0.035),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.navBarColor,
          shape: BoxShape.circle,
        ),
        child: Icon(Iconsax.shopping_cart_copy, color: Colors.white, size: 30),
      ),
    );
  }
}
