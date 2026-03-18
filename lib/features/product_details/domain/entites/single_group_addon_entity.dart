import 'package:dusks_burger_task/features/product_details/domain/entites/single_addon_entity.dart';

class SingleGroupAddonEntity {
  final String addonHeaderName;
  final bool isRequired;
  final SingleAddonEntity singleAddonEntity;

  const SingleGroupAddonEntity({
    required this.addonHeaderName,
    required this.isRequired,
    required this.singleAddonEntity,
  });
}
