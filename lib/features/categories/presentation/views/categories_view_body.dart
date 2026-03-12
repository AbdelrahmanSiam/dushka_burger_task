import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/category_list_view.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/models/product_model.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/models/category_tab_bar_model.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/categories_tab_bar_list_view.dart';
import 'package:flutter/material.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: CategoriesTabBarListView(
            categoryTabBarModel: CategoryTabBarModel(
              categoryTabBarName: "عروض دوشكا برجر",
              categoryTabBarImage: AppAssets.logo,
              isSelected: true,
            ),
          ),
        ),
        Expanded(
          child: CategoryListView(
            productModel: ProductModel(
              productHeader: "عروض دوشكا برجر",
              productImage: AppAssets.burger,
              productPrice: "20.4",
              productName: "بيج بايت بوكس",
            ),
          ),
        ),
      ],
    );
  }
}
