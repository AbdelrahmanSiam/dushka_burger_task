import 'package:dusks_burger_task/features/product_details/domain/entites/single_addon_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/single_addon_name.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/toggle_circle.dart';
import 'package:flutter/material.dart';

class SingleAddon extends StatelessWidget {
  const SingleAddon({super.key, required this.singleAddonEntity});
  final SingleAddonEntity singleAddonEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ToggleCircle(isSelected: singleAddonEntity.isSelected),
        SizedBox(width: 15),
        SingleAddonText(
          addonName: singleAddonEntity.addonName,
          price: singleAddonEntity.price,
        ),
      ],
    );
  }
}
