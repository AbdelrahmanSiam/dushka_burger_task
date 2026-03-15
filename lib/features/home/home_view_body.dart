import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text(S.of(context).home, style: AppStyles.textStyleBold18(context))),
      ],
    );
  }
}
