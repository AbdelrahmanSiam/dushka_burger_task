import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key, required this.isAllRequiredDone,
  });
 final bool isAllRequiredDone;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.09,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 12,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:isAllRequiredDone? AppColors.primary : Colors.red.shade200,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Center(
          child: Text(
            S.of(context).add_to_cart,
            style: AppStyles.textStyleBold18(
              context,
            ).copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
