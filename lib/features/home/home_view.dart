import 'package:dusks_burger_task/core/utils/app_router.dart';
import 'package:dusks_burger_task/features/account/account_view_body.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/categories_view_body.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/bottom_navigation_bar.dart';
import 'package:dusks_burger_task/features/home/home_view_body.dart';
import 'package:dusks_burger_task/features/offer/offer_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final pages = [
    HomeViewBody(),
    CategoriesViewBody(),
    OfferViewBody(),
    AccountViewBody(),
  ];
  void onTap(int index) {
    if (index == 2) {
      GoRouter.of(context).push(AppRouter.cartView);
      return;
    }
    setState(() {
      currentIndex = index > 2 ? index - 1 : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
      ),
    );
  }
}
