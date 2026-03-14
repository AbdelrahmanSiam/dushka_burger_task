import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/navigation_item.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.18,
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
          NavigationItem(
            icon: Icons.home_outlined,
            iconName: S.of(context).home,
          ),
          Spacer(),
          NavigationItem(
            icon: Icons.restaurant_menu_outlined,
            iconName: S.of(context).menu,
          ),
          Spacer(),
          Icon(Icons.shopping_cart_outlined , size: 35,),
          Spacer(),
          NavigationItem(
            icon: Icons.local_offer_outlined,
            iconName: S.of(context).offer,
          ),
          Spacer(),
          NavigationItem(
            icon: Icons.person_outlined,
            iconName: S.of(context).person,
          ),
        ],
      ),
    );
  }
}
