import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key, required this.productDescription,
  });
 final String productDescription;
  @override
  Widget build(BuildContext context) {
    return Text(
      productDescription,
      style: AppStyles.textStyleRegular18(context),
    );
  }
}
