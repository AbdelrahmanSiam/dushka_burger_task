import 'package:dusks_burger_task/features/categories/presentation/views/widgets/navigation_item.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNavigationBarItems extends StatelessWidget {
  const BottomNavigationBarItems({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationItem(
          outlinedIcon: Iconsax.home_2_copy,
          selectedIcon: Iconsax.home_2,
          iconName: S.of(context).home,
          onTap: onTap,
          isSelected: currentIndex == 0,
          onTapIndex: 0,
        ),
        Spacer(),
        NavigationItem(
          outlinedIcon: Iconsax.menu_board_copy,
          selectedIcon: Iconsax.menu_board,
          iconName: S.of(context).menu,
          isSelected: currentIndex == 1,
          onTap: onTap,
          onTapIndex: 1,
        ),
        Spacer(flex: 2,),
        NavigationItem(
          outlinedIcon: Iconsax.percentage_circle_copy,
          selectedIcon: Iconsax.percentage_circle,
          iconName: S.of(context).offer,
          onTap: onTap,
          onTapIndex: 3,
          isSelected: currentIndex == 2,
        ),
        Spacer(),
        NavigationItem(
          outlinedIcon: Iconsax.user_copy,
          selectedIcon: Iconsax.user,
          iconName: S.of(context).person,
          onTap: onTap,
          onTapIndex: 4,
          isSelected: currentIndex == 3 ,
        ),
      ],
    );
  }
}
