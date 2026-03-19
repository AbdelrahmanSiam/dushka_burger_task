import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/circle_button.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/product_image.dart';
import 'package:flutter/material.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({
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
      trailing: CircleButton(
            icon: Icons.add,
            backgroundColor: AppColors.primary,
            iconColor: Colors.white,
            onTap: (){},
          ),
    );
  }
}
