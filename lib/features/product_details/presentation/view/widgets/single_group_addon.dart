import 'package:dusks_burger_task/features/product_details/domain/entites/single_group_addon_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/addon_header.dart';
import 'package:dusks_burger_task/core/widgets/custom_divider.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/single_addon_list.dart';
import 'package:flutter/material.dart';

class SingleGroupAddon extends StatelessWidget {
  const SingleGroupAddon({super.key, required this.singleGroupAddonEntity});
  final SingleGroupAddonEntity singleGroupAddonEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDivider(),
        AddonHeader(
          addonHeaderName: singleGroupAddonEntity.addonHeaderName,
          isRequired: singleGroupAddonEntity.isRequired,
        ),
        SizedBox(height: 5),
        SingleAddonList(
          addonsList: singleGroupAddonEntity.addonsList,
        ),
      ],
    );
  }
}
