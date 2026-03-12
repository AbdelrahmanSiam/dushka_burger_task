import 'package:dusks_burger_task/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class CustomLanguageButton extends StatelessWidget {
  const CustomLanguageButton({super.key, required this.language, this.onTap});
  final String language;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin:  EdgeInsets.symmetric(horizontal: 12),
        padding: EdgeInsets.all(18),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.red, width: 1.2),
        ),
        child: Text(
          language,
          style: TextStyle(
            color: Colors.red,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
