import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_quantity_selector.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_image.dart';
import 'package:flutter/material.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return CartProductListTile(productEntity: productEntity);
  }
}

class CartProductListTile extends StatelessWidget {
  const CartProductListTile({
    super.key,
    required this.productEntity,
  });

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: ProductImage(productImage: productEntity.productImage),
      ),
      title: Text(
        productEntity.productName,
        style: AppStyles.textStyleSemiBold15(context),
      ),
      subtitle: Text(
        "${productEntity.productPrice} ج.م",
        style: AppStyles.textStyleBold18(
          context,
        ).copyWith(color: Color(0XFFA3061B)),
      ),
      trailing: CartQuantitySelector(
        quantity: 1,
        onIncrement: () {},
        onDecrement: () {},
        onDelete: () {},
      ),
    );
  }
}
