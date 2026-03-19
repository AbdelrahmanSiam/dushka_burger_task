import 'package:dusks_burger_task/features/cart/domain/enities/cart_product_item_entity.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_product_item.dart';
import 'package:flutter/material.dart';

class CartProductsList extends StatelessWidget {
  const CartProductsList({super.key, required this.cartProductItemEntity});
final CartProductItemEntity cartProductItemEntity;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return CartProductItem(cartProductItemEntity: cartProductItemEntity,);
      },
      separatorBuilder: (context, index) {
        return Divider(thickness: 2, color: Color(0XFFD9CFC6));
      },
      itemCount: 2,
    );
  }
}


