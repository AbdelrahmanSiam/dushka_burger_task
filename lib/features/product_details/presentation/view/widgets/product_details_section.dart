import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_image.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/quantity_selector.dart';
import 'package:flutter/material.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImage(productImage: productEntity.productImage),
        SizedBox(height: 30),
        Text(
          productEntity.productName,
          style: AppStyles.textStyleRegular23(context),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Text(
              "${productEntity.productPrice} ج.م",
              style: AppStyles.textStyleBold18(context),
            ),
            Spacer(),
            QuantitySelector(
              quantity: 1,
              onIncrement: () {},
              onDecrement: () {},
            ),
          ],
        ),
      ],
    );
  }
}
