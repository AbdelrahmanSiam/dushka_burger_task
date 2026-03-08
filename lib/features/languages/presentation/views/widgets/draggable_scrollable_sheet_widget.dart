import 'package:dusks_burger_task/features/languages/presentation/views/widgets/custom_language_button.dart';
import 'package:flutter/material.dart';

class DraggableScrollableSheetWidget extends StatelessWidget {
  const DraggableScrollableSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.18,
      minChildSize: 0.18,
      maxChildSize: 0.2,
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
              CustomLanguageButton(language: "English"),
              Spacer(),
              CustomLanguageButton(language: "العربية"),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}
