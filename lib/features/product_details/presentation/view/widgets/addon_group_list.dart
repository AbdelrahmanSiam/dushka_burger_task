import 'package:dusks_burger_task/features/product_details/domain/entites/single_addon_entity.dart';
import 'package:dusks_burger_task/features/product_details/domain/entites/single_group_addon_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/single_group_addon.dart';
import 'package:flutter/material.dart';

class AddonGroupsList extends StatelessWidget {
  const AddonGroupsList({super.key});
  final List<SingleGroupAddonEntity> list = const [
    SingleGroupAddonEntity(
      addonHeaderName: "جبنه شيدر",
      isRequired: false,
      addonsList: [
        SingleAddonEntity(
          addonName: "جبنه شيدر",
          price: 13.15,
        ),
      ],
    ),
    SingleGroupAddonEntity(
      addonHeaderName: "الرول الاول",
      isRequired: true,
      addonsList: [
        SingleAddonEntity(addonName: "دوشكا رول", price: 0),
        SingleAddonEntity(addonName: "رانشى رول", price: 0),
        SingleAddonEntity(addonName: "فاير رول", price: 0),
      ],
    ),
    SingleGroupAddonEntity(
      addonHeaderName: "البطاطس",
      isRequired: true,
      addonsList: [
        SingleAddonEntity(addonName: "بطاطس وسط",  price: 0),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return SingleGroupAddon(singleGroupAddonEntity: list[index]);
      },
    );
  }
}
