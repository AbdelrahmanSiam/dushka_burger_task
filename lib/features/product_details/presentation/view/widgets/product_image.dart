import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key, required this.productImage,
  });
final String productImage;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: Image.asset(
        productImage,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
