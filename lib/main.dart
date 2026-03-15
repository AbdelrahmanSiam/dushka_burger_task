import 'package:dusks_burger_task/core/di/injection.dart';
import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/core/utils/app_router.dart';
import 'package:dusks_burger_task/features/languages/presentation/manager/language_cubit/language_cubit.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await setupLocator();
  runApp(
    BlocProvider(
      create: (context) => getIt<LanguageCubit>(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, state) {
        return MaterialApp.router(
          locale: state,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          routerConfig: AppRouter.router,
          theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
