import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CouponField extends StatelessWidget {
  const CouponField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Iconsax.trash_copy),
          suffixIconColor: AppColors.primary,
          labelText:S.of(context).coupon_hint,
          labelStyle: AppStyles.textStyleBold13(
            context,
          ).copyWith(color: Colors.black),
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black),
          ),
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 18 , horizontal: 12),
        ),
      ),
    );
  }
}
