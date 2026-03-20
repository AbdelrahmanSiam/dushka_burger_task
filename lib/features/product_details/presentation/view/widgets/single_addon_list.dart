import 'package:dusks_burger_task/features/product_details/domain/entites/single_addon_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/single_addon.dart';
import 'package:flutter/material.dart';

class SingleAddonList extends StatefulWidget {
  const SingleAddonList({super.key, required this.addonsList});

  final List<SingleAddonEntity> addonsList;

  @override
  State<SingleAddonList> createState() => _SingleAddonListState();
}

class _SingleAddonListState extends State<SingleAddonList> {
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.addonsList.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: InkWell(
            onTap: () {
              setState(() {
                selected = selected == index ? -1 : index; // toggle
              });
            },
            child: SingleAddon(
              singleAddonEntity: item,
              isSelected: selected == index,
            ),
          ),
        );
      }).toList(),
    );
  }
}
