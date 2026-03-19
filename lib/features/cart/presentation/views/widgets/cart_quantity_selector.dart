import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CartQuantitySelector extends StatelessWidget {
  const CartQuantitySelector({super.key, required this.quantity, required this.onIncrement, required this.onDecrement, required this.onDelete});
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onDelete;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
      color: Color(0XFFF5ECDB),
      borderRadius: BorderRadius.circular(1000),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            icon:(quantity > 1)? Icons.remove : Iconsax.trash_copy,
            backgroundColor: const Color(0xFFF4D3CA),
            iconColor: AppColors.primary,
            onTap: quantity > 1 ? onDecrement : onDelete,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                '$quantity',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          CircleButton(
            icon: Icons.add,
            backgroundColor: AppColors.primary,
            iconColor: Colors.white,
            onTap: onIncrement,
          ),
        ],
      ),
    );
  }
}
