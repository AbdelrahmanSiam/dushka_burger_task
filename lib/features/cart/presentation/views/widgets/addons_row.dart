import 'package:dusks_burger_task/features/cart/presentation/views/widgets/addon_chip.dart';
import 'package:flutter/material.dart';

class AddonsRow extends StatelessWidget {
  const AddonsRow({super.key, required this.addons});
  final List<String> addons ;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: addons.map((addon) => AddonChip(addonName: addon)).toList(),
      ),
    );
  }
}