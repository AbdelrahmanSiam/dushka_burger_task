import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CouponField extends StatelessWidget {
  const CouponField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Iconsax.trash_copy),
        suffixIconColor: AppColors.primary,
        hintText: S.of(context).coupon_hint,
        hintStyle: AppStyles.textStyleBold13(
          context,
        ).copyWith(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 18 , horizontal: 12),
      ),
    );
  }
}
