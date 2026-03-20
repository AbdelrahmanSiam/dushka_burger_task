import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    super.key,
    required this.title,
    required this.price,
    this.isBold = false,
  });
  final String title, price;
  final bool isBold;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: isBold
              ? AppStyles.textStyleBold18(context)
              : AppStyles.textStyleBold13(
                  context,
                ).copyWith(color: Colors.black),
        ),
        Spacer(),
        Text(
          "$price ج.م",
          style: isBold
              ? AppStyles.textStyleBold18(context)
              : AppStyles.textStyleBold13(
                  context,
                ).copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
