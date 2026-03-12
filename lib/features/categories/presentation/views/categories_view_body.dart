import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/categories_tab_bar.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/category_list_tile.dart';
import 'package:flutter/material.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: CategoriesTabBar(
            isSelected: true,
            image: AppAssets.logo,
            title: "عروض دوشكا برجر",
          ),
        ),
        Expanded(
          flex: 16,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return CategoryListTile(
                image: AppAssets.burger,
                title: "بيج بايت بوكس",
                subTitle: "24.4",
              );
            },
          ),
        ),
      ],
    );
  }
}
