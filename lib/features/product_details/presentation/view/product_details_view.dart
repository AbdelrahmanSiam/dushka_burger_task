import 'package:dusks_burger_task/core/widgets/custom_button.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_details_body.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductDetailsBody(),
      bottomNavigationBar: CustomButton(
        isAllRequiredDone: false,
        buttonText: S.of(context).add_to_cart,
      ),
    );
  }
}
