import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/single_addon_name.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/toggle_circle.dart';
import 'package:flutter/material.dart';

class SingleAddon extends StatelessWidget {
  const SingleAddon({super.key, required this.price, required this.addonName, required this.isSelected});
  final double price;
  final String addonName;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ToggleCircle(isSelected: isSelected),
        SizedBox(width: 15),
        SingleAddonText(addonName: addonName,price: price),
      ],
    );
  }
}


