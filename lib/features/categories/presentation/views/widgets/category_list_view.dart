import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/models/product_model.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/category_list_tile.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key, required this.productModel,
  });
 final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(productModel.productHeader , style: AppStyles.textStyleBold18(context),),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return CategoryListTile(
                productModel : productModel
              );
            },
          ),
        ),
      ],
    );
  }
}
