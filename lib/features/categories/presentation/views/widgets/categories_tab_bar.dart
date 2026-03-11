import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CategoriesTabBar extends StatelessWidget {
  const CategoriesTabBar({
    super.key,
    required this.isSelected,
    required this.image,
    required this.title,
  });
  final bool isSelected;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(6),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isSelected ? Colors.red : Color(0XFFF5E1DC),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Center(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(1000),
                  child: Image.asset(image, width: 35, height: 35),
                ),
                SizedBox(width: 5),
                Text(
                  title,
                  style: isSelected
                      ? AppStyles.textStyle13(context).copyWith(color: Colors.white)
                      : AppStyles.textStyle13(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
