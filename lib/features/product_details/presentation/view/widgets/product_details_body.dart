import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/features/product_details/domain/entites/single_group_addon_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/custom_divider.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_description.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_details_header.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_details_section.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/single_group_addon.dart';
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
            productEntity: ProductEntity(
              productImage: AppAssets.burger,
              productPrice: "150",
              productName: "صاروخ الوحوش",
            ),
          ),
          CustomDivider(),
          ProductDescription(
            productDescription:
                "الووووووووووووووووووووووووووووووووووووووووووووووووووووووصف",
          ),
          CustomDivider(),
          SingleGroupAddon(
            singleGroupAddonEntity: SingleGroupAddonEntity(
              addonHeaderName: "جبنه شيدر",
              addonName: "باكيت جبنه شيدر",
              isRequired: false,
              isSelected: false,
              price: 13.15,
            ),
          ),
        ],
      ),
    );
  }
}
