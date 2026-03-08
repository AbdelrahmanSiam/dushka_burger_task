import 'package:dusks_burger_task/core/utils/app_router.dart';
import 'package:dusks_burger_task/features/languages/presentation/views/language_view.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: Locale("ar"),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routerConfig: AppRouter.router,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFFAF3E9)),
      debugShowCheckedModeBanner: false,
    );
  }
}
