import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({
    super.key,
    required this.enabled,
  });

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: enabled
            ? AppColors.primary
            : Colors.red.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        S.of(context).apply,
        style: AppStyles.textStyleBold18(context)
            .copyWith(color: Colors.white),
      ),
    );
  }
}