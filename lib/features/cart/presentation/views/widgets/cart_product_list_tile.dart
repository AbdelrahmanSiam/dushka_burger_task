import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_quantity_selector.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_image.dart';
import 'package:flutter/material.dart';

class CartProductListTile extends StatefulWidget {
  const CartProductListTile({super.key, required this.productEntity});

  final ProductEntity productEntity;

  @override
  State<CartProductListTile> createState() => _CartProductListTileState();
}

class _CartProductListTileState extends State<CartProductListTile> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: ProductImage(productImage: widget.productEntity.productImage),
      ),
      title: Text(
        widget.productEntity.productName,
        style: AppStyles.textStyleSemiBold15(context),
      ),
      subtitle: Text(
        "${widget.productEntity.productPrice} ج.م",
        style: AppStyles.textStyleBold18(
          context,
        ).copyWith(color: Color(0XFFA3061B)),
      ),
      trailing: CartQuantitySelector(
        quantity: quantity,
        onIncrement: () {
          setState(() {
            quantity++;
          });
        },
        onDecrement: () {
          setState(() {
            quantity--;
          });
        },
        onDelete: () {},
      ),
    );
  }
}
