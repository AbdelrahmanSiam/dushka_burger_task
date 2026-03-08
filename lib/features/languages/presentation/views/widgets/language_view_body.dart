import 'package:dusks_burger_task/core/app_assets.dart';
import 'package:flutter/material.dart';

class LanguageViewBody extends StatelessWidget {
  const LanguageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.logo, height: 250, width: 250),
        Text(
          " 👋 !مرحبا",
          style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          " .اختر اللغه المناسبه لك ",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
