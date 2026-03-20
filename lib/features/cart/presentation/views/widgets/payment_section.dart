import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/dashed_divider.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/payment_row.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            S.of(context).payment_details,
            style: AppStyles.textStyleBold23(context),
          ),
          SizedBox(height: 15),
          DashedDivider(),
          PaymentRow(title: S.of(context).subtotal, price: "407.50"),
          SizedBox(height: 5),
          PaymentRow(title: S.of(context).tax, price: "50.50"),
          SizedBox(height: 5),
          DashedDivider(),
          PaymentRow(
            title: S.of(context).grand_total,
            price: "50.50",
            isBold: true,
          ),
        ],
      ),
    );
  }
}
