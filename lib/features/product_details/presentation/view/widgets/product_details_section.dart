import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_image.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/quantity_selector.dart';
import 'package:flutter/material.dart';

class ProductDetailsSection extends StatefulWidget {
  const ProductDetailsSection({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  State<ProductDetailsSection> createState() => _ProductDetailsSectionState();
}

class _ProductDetailsSectionState extends State<ProductDetailsSection> {
  int quantity = 1 ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImage(productImage: widget.productEntity.productImage),
        SizedBox(height: 30),
        Text(
          widget.productEntity.productName,
          style: AppStyles.textStyleRegular23(context),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Text(
              "${widget.productEntity.productPrice} ج.م",
              style: AppStyles.textStyleBold18(context),
            ),
            Spacer(),
            QuantitySelector(
              quantity: quantity,
              onIncrement: () {
                setState(() {
                  quantity++;
                });
              },
              onDecrement: () {
                setState(() {
                  quantity--;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
