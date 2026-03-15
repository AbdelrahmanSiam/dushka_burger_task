import 'package:dusks_burger_task/features/cart/presentation/views/cart_view.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/categories_view.dart';
import 'package:dusks_burger_task/features/languages/presentation/views/language_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String languageView = "/";
  static const String categoriesView = "/categories";
  static const String cartView = "/categories";
  static final GoRouter router = GoRouter(
    initialLocation: languageView,
    routes: [
      GoRoute(path: languageView, builder: (_, __) => const LanguageView()),
      GoRoute(path: categoriesView, builder: (_, __) => const CategoriesView()),
      GoRoute(path: cartView, builder: (_, __) => const CartView()),
    ],
  );
}
