import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/product_details/presentation/view/widgets/custom_back_button.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class CartViewHeader extends StatelessWidget {
  const CartViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBackButton(),
        Spacer(flex: 1,),
        Text(S.of(context).cart, style: AppStyles.textStyleBold18(context)),
        Spacer(flex: 2,),
      ],
    );
  }
}
