import 'package:dusks_burger_task/features/cart/presentation/views/cart_view.dart';
import 'package:dusks_burger_task/features/home/home_view.dart';
import 'package:dusks_burger_task/features/languages/presentation/views/language_view.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/product_details_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String languageView = "/";
  static const String cartView = "/cart";
  static const String homeView = "/home";
  static const String productDetailsView = "/productDetails";
  static final GoRouter router = GoRouter(
    initialLocation: languageView,
    routes: [
      GoRoute(path: languageView, builder: (_, __) => const LanguageView()),
      GoRoute(path: cartView, builder: (_, __) => const CartView()),
      GoRoute(path: homeView, builder: (_, __) => const HomeView()),
      GoRoute(path: productDetailsView, builder: (_, __) => const ProductDetailsView()),
    ],
  );
}
