import 'package:flutter/material.dart';

class CustomLanguageButton extends StatelessWidget {
  const CustomLanguageButton({super.key, required this.language});
  final String language;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: BoxBorder.all(color: Colors.red, width: 1.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
