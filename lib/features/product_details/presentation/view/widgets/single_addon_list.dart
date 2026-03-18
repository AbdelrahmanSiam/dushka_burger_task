import 'package:dusks_burger_task/features/product_details/domain/entites/single_addon_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/single_addon.dart';
import 'package:flutter/material.dart';

class SingleAddonList extends StatelessWidget {
  const SingleAddonList({super.key, required this.addonsList});

 final List<SingleAddonEntity> addonsList ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: addonsList.asMap().entries.map((e){
        int index = e.key;
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: SingleAddon(singleAddonEntity: addonsList[index]),
        );
      }).toList(),
    );
  }
}