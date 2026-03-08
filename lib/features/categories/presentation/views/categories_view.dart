import 'package:dusks_burger_task/features/categories/presentation/views/categories_view_body.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoriesViewBody(),
    );
  }
}