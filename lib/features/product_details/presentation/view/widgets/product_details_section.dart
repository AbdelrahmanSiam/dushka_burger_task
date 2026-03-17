import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/models/product_model.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/circle_button.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_image.dart';
import 'package:flutter/material.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImage(productImage: productModel.productImage),
        SizedBox(height: 30),
        Text(
          productModel.productName,
          style: AppStyles.textStyleRegular23(context),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Text(
              "${productModel.productPrice} ج.م",
              style: AppStyles.textStyleBold18(context),
            ),
            Spacer(),
            CircleButton(
              icon: Icons.add,
              backgroundColor: AppColors.primary,
              iconColor: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
