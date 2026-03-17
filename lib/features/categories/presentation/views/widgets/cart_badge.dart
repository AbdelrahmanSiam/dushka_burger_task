import 'package:flutter/material.dart';

class CartBadge extends StatelessWidget {
  const CartBadge({
    super.key,
    required this.badgeNumber,
    required this.containerColor,
    required this.numberColor,
  });
  final int badgeNumber;
  final Color containerColor, numberColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: containerColor,
        shape: BoxShape.circle,
        border: BoxBorder.all(color: containerColor),
      ),
      child: Text(
        "$badgeNumber",
        style: TextStyle(color: numberColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
