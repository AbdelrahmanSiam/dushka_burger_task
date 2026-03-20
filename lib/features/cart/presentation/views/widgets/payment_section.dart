import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Text(S.of(context).payment_details),
      ],
    );
  }
}