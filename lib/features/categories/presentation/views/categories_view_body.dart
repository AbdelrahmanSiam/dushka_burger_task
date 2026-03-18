import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/category_tab_bar_entity.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/category_list_view.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/categories_tab_bar_list_view.dart';
import 'package:flutter/material.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25,),
        SizedBox(
          height: 55,
          child: CategoriesTabBarListView(
            categoryTabBarEntity: CategoryTabBarEntity(
              categoryTabBarName: "عروض دوشكا برجر",
              categoryTabBarImage: AppAssets.logo,
              isSelected: true,
            ),
          ),
        ),
        Expanded(
          child: CategoryListView(
            productEntity: ProductEntity(
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
