import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/bottom_navigation_bar_items.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/cart_with_animation.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final void Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 12,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: BottomNavigationBarItems(
              currentIndex: currentIndex,
              onTap: onTap,
            ),
          ),
          Positioned(
            top: -(MediaQuery.of(context).size.height * 0.04),
            child: InkWell(
              onTap: () => onTap(2),
              child: const CartWithAnimation(badgeNumber: 0,),
            ),
          ),
        ],
      ),
    );
  }
}
