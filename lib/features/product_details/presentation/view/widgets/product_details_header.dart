import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/core/utils/app_router.dart';
import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/cart_with_badge.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/custom_back_button.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBackButton(),
        Spacer(),
        Text(
          S.of(context).product_details,
          style: AppStyles.textStyleBold18(context),
        ),
        Spacer(),
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.cartView);
          },
          child: CartWithBadge(
            badgeNumber: 0,
            iconColor: AppColors.primary,
            numberColor: Colors.white,
            containerColor: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
