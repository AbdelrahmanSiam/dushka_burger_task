import 'package:dusks_burger_task/core/utils/app_router.dart';
import 'package:dusks_burger_task/features/languages/presentation/manager/language_cubit/language_cubit.dart';
import 'package:dusks_burger_task/features/languages/presentation/views/widgets/custom_language_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DraggableScrollableSheetWidget extends StatelessWidget {
  const DraggableScrollableSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.18,
      minChildSize: 0.18,
      maxChildSize: 0.35,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            boxShadow: [BoxShadow(blurRadius: 15, color: Colors.black26)],
          ),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 55,
                  child: Divider(thickness: 4, color: Colors.grey),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  context.read<LanguageCubit>().changeLanguage('en');
                  GoRouter.of(
                    context,
                  ).pushReplacement(AppRouter.categoriesView);
                },
                child: CustomLanguageButton(language: "English"),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  context.read<LanguageCubit>().changeLanguage('ar');
                  GoRouter.of(
                    context,
                  ).pushReplacement(AppRouter.categoriesView);
                },
                child: CustomLanguageButton(language: "العربية"),
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}
