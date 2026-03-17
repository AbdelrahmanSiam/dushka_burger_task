import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/models/product_model.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/custom_divider.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_details_header.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_details_section.dart';
import 'package:flutter/material.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          ProductDetailsHeader(),
          SizedBox(height: 10),
          ProductDetailsSection(
            productModel: ProductModel(
              productHeader: "",
              productImage: AppAssets.burger,
              productPrice: "150",
              productName: "صاروخ الوحوش",
            ),
          ),
          CustomDivider(),
        ],
      ),
    );
  }
}


