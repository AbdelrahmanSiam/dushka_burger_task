
import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/models/category_model.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/category_list_tile.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key, required this.categoryModel,
  });
 final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(categoryModel.categoryHeader),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 15,
            itemBuilder: (context, index) {
              return CategoryListTile(
                categoryModel : categoryModel
              );
            },
          ),
        ),
      ],
    );
  }
}
