import 'package:dusks_burger_task/core/app_assets.dart';
import 'package:flutter/material.dart';

class LanguageViewBody extends StatelessWidget {
  const LanguageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Image.asset(AppAssets.logo)],
    );
  }
}
