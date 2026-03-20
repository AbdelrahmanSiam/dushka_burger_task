import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_products_list.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_view_header.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/coupon_section.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/payment_section.dart';
import 'package:dusks_burger_task/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 35),
          CartViewHeader(),
          SizedBox(height: 10),
          CartProductsListSection(),
          CustomDivider(),
          CouponSection(),
          CustomDivider(),
          PaymentSection(),
        ],
      ),
    );
  }
}






