import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_view_header.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25,),
        CartViewHeader(),
      ],
    );
  }
}

