import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/features/cart/domain/enities/cart_product_item_entity.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_products_list.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:flutter/material.dart';

class CartProductsSection extends StatelessWidget {
  const CartProductsSection({super.key});

  final List<String> addons = const [
    "بطاطس",
    "مشروب",
    "مشروب",
    "مشروب",
    "مشروب",
    "مشروب",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35),
        Expanded(
          child: CartProductsList(
            cartProductItemEntity: CartProductItemEntity(
              productEntity: ProductEntity(
                productImage: AppAssets.burger,
                productPrice: "150.25",
                productName: "دابل الوحوش",
              ),
              addons: addons,
            ),
          ),
        ),
      ],
    );
  }
}
