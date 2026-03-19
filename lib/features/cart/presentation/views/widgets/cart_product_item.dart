import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/addon_chip.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_product_list_tile.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_quantity_selector.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_image.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartProductListTile(productEntity: productEntity),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).addons,
              style: AppStyles.textStyleBold18(context),
            ),
            AddonChip(addonName: "بطاطس"),
          ],
        ),
      ],
    );
  }
}
