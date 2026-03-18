import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SingleAddonText extends StatelessWidget {
  const SingleAddonText({
    super.key,
    required this.price, required this.addonName,
  });
  final String addonName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          addonName,
          style: AppStyles.textStyleRegular18(context),
        ),
        (price > 0)
            ? Text(
                '+ $price ج.م',
                style: AppStyles.textStyleRegular18(context),
              )
            : SizedBox(),
      ],
    );
  }
}