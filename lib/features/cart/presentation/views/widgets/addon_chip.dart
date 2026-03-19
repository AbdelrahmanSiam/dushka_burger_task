import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AddonChip extends StatelessWidget {
  const AddonChip({super.key, required this.addonName});
  final String addonName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(addonName, style: AppStyles.textStyleSemiBold15(context)),
        ),
        SizedBox(
          height: 20,
          child: VerticalDivider(color: Colors.grey.shade400, thickness: 1),
        ),
      ],
    );
  }
}
