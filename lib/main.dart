import 'package:dusks_burger_task/features/languages/presentation/views/language_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFAF3E9),
      ),
      debugShowCheckedModeBanner: false,
      home: LanguageView(),
    );
  }
}

