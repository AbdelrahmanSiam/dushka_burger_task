import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/single_addon_name.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/toggle_circle.dart';
import 'package:flutter/material.dart';

class SingleAddon extends StatelessWidget {
  const SingleAddon({super.key, required this.price});
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ToggleCircle(isSelected: true),
        SizedBox(width: 15),
        SingleAddonText(addonName: "باكيت جينه شيدر",price: price),
      ],
    );
  }
}


