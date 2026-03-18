import 'package:dusks_burger_task/features/product_details/domain/entites/single_group_addon_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/single_group_addon.dart';
import 'package:flutter/material.dart';

class AddonGroupsList extends StatelessWidget {
  const AddonGroupsList({super.key});
  final List<SingleGroupAddonEntity> list = const [
    SingleGroupAddonEntity(
      addonHeaderName: "جبنه شيدر",
      addonName: "باكيت جبنه شيدر",
      isRequired: false,
      isSelected: false,
      price: 13.15,
    ),
    SingleGroupAddonEntity(
      addonHeaderName: "الرول الاول",
      addonName: "دوشكا رول",
      isRequired: true,
      isSelected: true,
      price: 0,
    ),
    SingleGroupAddonEntity(
      addonHeaderName: "البطاطس",
      addonName: "بطاطس وسط",
      isRequired: true,
      isSelected: false,
      price: 0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return SingleGroupAddon(
          singleGroupAddonEntity: list[index],
        );
      },
    );
  }
}
