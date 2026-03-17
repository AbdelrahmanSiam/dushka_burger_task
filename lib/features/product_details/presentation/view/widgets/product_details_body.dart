import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25),
        Row(
          children: [
            CustomBackButton(),
          ],
        ),
      ],
    );
  }
}
