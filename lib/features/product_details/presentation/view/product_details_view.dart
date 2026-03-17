import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_details_body.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductDetailsBody(),
    );
  }
}