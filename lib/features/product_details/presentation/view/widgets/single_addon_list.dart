import 'package:dusks_burger_task/features/product_details/domain/entites/single_group_addon_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/single_addon.dart';
import 'package:flutter/material.dart';

class SingleAddonList extends StatelessWidget {
  const SingleAddonList({super.key, required this.singleGroupAddonEntity});

  final SingleGroupAddonEntity singleGroupAddonEntity;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return SingleAddon(
          singleAddonEntity: singleGroupAddonEntity.singleAddonEntity,
        );
      },
    );
  }
}