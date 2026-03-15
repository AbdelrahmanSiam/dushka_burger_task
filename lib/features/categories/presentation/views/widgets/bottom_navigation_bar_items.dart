import 'package:dusks_burger_task/features/categories/presentation/views/widgets/cart_item.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/navigation_item.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNavigationBarItems extends StatelessWidget {
  const BottomNavigationBarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationItem(
          outlinedIcon: Iconsax.home_2_copy,
          selectedIcon: Iconsax.home_2,
          iconName: S.of(context).home,
        ),
        Spacer(),
        NavigationItem(
          outlinedIcon: Iconsax.menu_board_copy,
          selectedIcon: Iconsax.menu_board,
          iconName: S.of(context).menu,
          isSelected: true,
        ),
        Spacer(),
        CartItem(),
        Spacer(),
        NavigationItem(
          outlinedIcon: Iconsax.percentage_circle_copy,
          selectedIcon: Iconsax.percentage_circle,
          iconName: S.of(context).offer,
        ),
        Spacer(),
        NavigationItem(
          outlinedIcon: Iconsax.user_copy,
          selectedIcon: Iconsax.user,
          iconName: S.of(context).person,
        ),
      ],
    );
  }
}


