import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/features/cart/domain/enities/cart_product_item_entity.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_products_list.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_view_header.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35),
        CartViewHeader(),
        SizedBox(height: 10),
        CartProductsListSection(),
        CustomDivider(),
      ],
    );
  }
}

