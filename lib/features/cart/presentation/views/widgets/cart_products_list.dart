import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/features/cart/domain/enities/cart_product_item_entity.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_product_item.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:flutter/material.dart';

class CartProductsListSection extends StatelessWidget {
  CartProductsListSection({super.key});
  final List<CartProductItemEntity> cartProductsList = [
    CartProductItemEntity(
      productEntity: ProductEntity(
        productImage: AppAssets.burger,
        productPrice: "150.25",
        productName: "دابل الوحوش",
      ),
      addons: ["بطاطس", "مشروب", "مشروب", "مشروب", "مشروب", "مشروب"],
    ),
    CartProductItemEntity(
      productEntity: ProductEntity(
        productImage: AppAssets.burger,
        productPrice: "257.25",
        productName: "صاروخ الوحوش",
      ),
      addons: ["بطاطس", "مشروب", "بطاطس", "مشروب", "بطاطس", "مشروب"],
    ),
    CartProductItemEntity(
      productEntity: ProductEntity(
        productImage: AppAssets.burger,
        productPrice: "257.25",
        productName: "صاروخ الوحوش",
      ),
      addons: ["بطاطس", "مشروب", "بطاطس", "مشروب", "بطاطس", "مشروب"],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: cartProductsList.asMap().entries.map((e) {
          int index = e.key;
          var item = e.value;

          return Column(
            children: [
              CartProductItem(cartProductItemEntity: item),

              if (index != cartProductsList.length - 1)
                Divider(color: Colors.grey.shade300, thickness: 2),
            ],
          );
        }).toList(),
      ),
    );
  }
}
