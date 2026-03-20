import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/dashed_divider.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Text(S.of(context).payment_details , style: AppStyles.textStyleBold23(context),),
        SizedBox(height: 20,),
        DashedDivider(),
      ],
    );
  }
}