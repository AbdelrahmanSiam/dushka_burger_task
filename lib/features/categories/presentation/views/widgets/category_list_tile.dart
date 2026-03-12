import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({
    super.key, required this.categoryModel,
  });
  final CategoryModel categoryModel;
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Image.asset(categoryModel.categoryImage, width: 55, height: 55, fit: BoxFit.cover),
      ),
      title: Text(categoryModel.categoryName, style: AppStyles.textStyleSemiBold15(context)),
      subtitle: Text(categoryModel.categoryPrice, style: AppStyles.textStyleBold18(context)),
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
