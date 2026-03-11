import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CategoriesTabBar extends StatelessWidget {
  const CategoriesTabBar({
    super.key,
  });

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
            color: Color(0XFFF5E1DC),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Center(
            child: Text(
              "عروض دوشكا برجر",
              style: AppStyles.textStyle13,
            ),
          ),
        );
      },
    );
  }
}
