import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/addon_header.dart';
import 'package:flutter/material.dart';

class SingleGroupAddon extends StatelessWidget {
  const SingleGroupAddon({
    super.key,
    required this.addonHeaderName,
    required this.isRequired,
  });
  final String addonHeaderName;
  final bool isRequired;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddonHeader(addonHeaderName: addonHeaderName, isRequired: isRequired),
      ],
    );
  }
}

