import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_image.dart';
import 'package:flutter/material.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({
    super.key, required this.productEntity,
  });
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: ProductImage(productImage: productEntity.productImage),
      ),
      title: Text(productEntity.productName, style: AppStyles.textStyleSemiBold15(context)),
      subtitle: Text("${productEntity.productPrice} ج.م", style: AppStyles.textStyleBold18(context)),
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
