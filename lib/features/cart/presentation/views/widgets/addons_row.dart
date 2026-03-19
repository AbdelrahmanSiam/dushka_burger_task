import 'package:dusks_burger_task/features/cart/presentation/views/widgets/addon_chip.dart';
import 'package:flutter/material.dart';

class AddonsRow extends StatelessWidget {
  const AddonsRow({super.key});
  final List<String> addons = const ["بطاطس", "مشروب"];
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