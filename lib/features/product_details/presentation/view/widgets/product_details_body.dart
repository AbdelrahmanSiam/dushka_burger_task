import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_details_header.dart';
import 'package:flutter/material.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 25),
          ProductDetailsHeader(),
        ],
      ),
    );
  }
}

