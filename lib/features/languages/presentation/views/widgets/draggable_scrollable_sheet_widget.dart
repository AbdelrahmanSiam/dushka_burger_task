import 'package:dusks_burger_task/core/utils/responsive.dart';
import 'package:dusks_burger_task/features/languages/presentation/manager/language_cubit/language_cubit.dart';
import 'package:dusks_burger_task/features/languages/presentation/views/helper.dart';
import 'package:dusks_burger_task/features/languages/presentation/views/widgets/custom_language_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DraggableScrollableSheetWidget extends StatelessWidget {
  const DraggableScrollableSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.25,
      minChildSize: 0.25,
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
              CustomLanguageButton(
                language: "English",
                onTap: () {
                  context.read<LanguageCubit>().changeLanguage('en');
                  goToHome(context);
                },
              ),
              Spacer(),
              CustomLanguageButton(
                language: "العربية",
                onTap: () {
                  context.read<LanguageCubit>().changeLanguage('ar');
                  goToHome(context);
                },
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}
