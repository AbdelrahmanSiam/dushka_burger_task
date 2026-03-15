import 'package:dusks_burger_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OfferViewBody extends StatelessWidget {
  const OfferViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("Offer", style: AppStyles.textStyleBold18(context)),
        ),
      ],
    );
  }
}
