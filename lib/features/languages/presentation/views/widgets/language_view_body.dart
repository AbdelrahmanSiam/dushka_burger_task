import 'package:dusks_burger_task/core/utils/app_assets.dart';
import 'package:dusks_burger_task/core/utils/responsive.dart';
import 'package:dusks_burger_task/features/languages/presentation/views/widgets/draggable_scrollable_sheet_widget.dart';
import 'package:flutter/material.dart';

class LanguageViewBody extends StatelessWidget {
  const LanguageViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Spacer(),
              Image.asset(AppAssets.logo, height: height * 0.25),
              Text(
                " مرحبا 👋 !",
                style: TextStyle(
                  fontSize: Responsive.getFont(context, 42),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "اختر اللغه المناسبه لك.",
                style: TextStyle(
                  fontSize: Responsive.getFont(context, 18),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
        DraggableScrollableSheetWidget(),
      ],
    );
  }
}
