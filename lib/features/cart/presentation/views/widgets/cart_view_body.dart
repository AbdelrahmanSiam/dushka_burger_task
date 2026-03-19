import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_product_item.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_view_header.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25),
        CartViewHeader(),
        SizedBox(height: 35),
        CartProductItem(
          productEntity: ProductEntity(
            productImage: AppAssets.burger,
            productPrice: "150.25",
            productName: "دابل الوحوش",
          ),
        ),
      ],
    );
  }
}
