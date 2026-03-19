import 'package:dusks_burger_task/features/categories/domain/entites/product_entity.dart';

class CartProductItemEntity {
  final ProductEntity productEntity;
  final List<String> addons;

  const CartProductItemEntity({
    required this.productEntity,
    required this.addons,
  });
}
