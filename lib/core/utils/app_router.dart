import 'package:dusks_burger_task/features/languages/presentation/views/language_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String languageView = "/";
  static const String categoriesView = "/categories";
  static final GoRouter router = GoRouter(
    initialLocation: languageView,
    routes: [
      GoRoute(path: languageView, builder: (_, __) => const LanguageView()),
    ],
  );
}
