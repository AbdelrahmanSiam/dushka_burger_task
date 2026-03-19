import 'package:dusks_burger_task/core/utils/app_router.dart';
import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/category_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            productEntity.productHeader!,
            style: AppStyles.textStyleBold18(context),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.productDetailsView);
                },
                child: ProductListTile(productEntity: productEntity),
              );
            },
          ),
        ),
      ],
    );
  }
}
