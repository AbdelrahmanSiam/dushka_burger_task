import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/cart/domain/enities/cart_product_item_entity.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/addons_row.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_product_list_tile.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key, required this.cartProductItemEntity,
  });
  final CartProductItemEntity cartProductItemEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CartProductListTile(
          productEntity: ProductEntity(
            productImage: cartProductItemEntity.productEntity.productImage,
            productPrice: cartProductItemEntity.productEntity.productPrice,
            productName: cartProductItemEntity.productEntity.productName,
          ),
        ),
        Text(
         S.of(context).addons,
          style: AppStyles.textStyleBold18(context),
        ),
        AddonsRow(addons: cartProductItemEntity.addons,),
      ],
    );
  }
}