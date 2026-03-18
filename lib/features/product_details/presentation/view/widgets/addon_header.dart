import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AddonHeader extends StatelessWidget {
  const AddonHeader({
    super.key,
    required this.addonHeaderName,
    required this.isRequired,
  });

  final String addonHeaderName;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(addonHeaderName, style: AppStyles.textStyleBold23(context)),
        SizedBox(width: 5),
        Text(
          isRequired ? "*" : "",
          style: AppStyles.textStyleBold23(
            context,
          ).copyWith(color: Colors.red),
        ),
      ],
    );
  }
}
