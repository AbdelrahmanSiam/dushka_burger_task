import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/toggle_circle.dart';
import 'package:flutter/material.dart';

class SingleAddon extends StatelessWidget {
  const SingleAddon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ToggleCircle(),
    ],);
  }
}



