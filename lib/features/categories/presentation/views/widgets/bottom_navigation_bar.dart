import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.backgroundColors,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 12,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.person_outlined, size: 50),
          Spacer(),
          Icon(Icons.home_outlined),
          Spacer(),
          Icon(Icons.shopping_cart_outlined),
          Spacer(),
          Icon(Icons.restaurant_menu_outlined),
          Spacer(),
          Icon(Icons.local_offer_outlined),
        ],
      ),
    );
  }
}
