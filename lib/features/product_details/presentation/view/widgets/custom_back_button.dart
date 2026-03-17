
import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: BoxBorder.all(width: 1, color: Colors.black),
      ),
      child: Row(
        children: [
          Icon(Icons.arrow_back),
          Text(
            S.of(context).back,
            style: AppStyles.textStyleBold13(
              context,
            ).copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
