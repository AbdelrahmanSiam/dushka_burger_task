import 'package:dusks_burger_task/features/cart/presentation/views/widgets/cart_view_body.dart';
import 'package:dusks_burger_task/core/widgets/custom_button.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartViewBody(),
      floatingActionButton: CustomButton(
        buttonText: S.of(context).proceed_to_checkout,
      ),
    );
  }
}
