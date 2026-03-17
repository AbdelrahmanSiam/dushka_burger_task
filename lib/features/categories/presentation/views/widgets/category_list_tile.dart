import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/models/product_model.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_image.dart';
import 'package:flutter/material.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({
    super.key, required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: ProductImage(productImage: productModel.productImage),
      ),
      title: Text(productModel.productName, style: AppStyles.textStyleSemiBold15(context)),
      subtitle: Text("${productModel.productPrice} ج.م", style: AppStyles.textStyleBold18(context)),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add, color: Colors.white, size: 15),
        ),
      ),
    );
  }
}
