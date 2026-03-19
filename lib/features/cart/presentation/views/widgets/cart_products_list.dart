import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_product_item.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:flutter/material.dart';

class CartProductsList extends StatelessWidget {
  const CartProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return CartProductItem(
          productEntity: ProductEntity(
            productImage: AppAssets.burger,
            productPrice: "150.25",
            productName: "دابل الوحوش",
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(thickness: 2,color: Color(0XFFD9CFC6),);
      },
      itemCount: 2,
    );
  }
}