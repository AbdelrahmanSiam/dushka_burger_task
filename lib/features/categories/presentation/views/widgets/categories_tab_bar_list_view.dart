import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/models/category_tab_bar_model.dart';
import 'package:flutter/material.dart';

class CategoriesTabBarListView extends StatelessWidget {
  const CategoriesTabBarListView({super.key, required this.categoryTabBarModel});
  final CategoryTabBarModel categoryTabBarModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(6),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: categoryTabBarModel.isSelected
                ? Colors.red
                : Color(0XFFF5E1DC),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Center(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(
                    categoryTabBarModel.categoryTabBarImage,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  categoryTabBarModel.categoryTabBarName,
                  style: categoryTabBarModel.isSelected
                      ? AppStyles.textStyleBold13(
                          context,
                        ).copyWith(color: Colors.white)
                      : AppStyles.textStyleBold13(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
