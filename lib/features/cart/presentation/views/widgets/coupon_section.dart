import 'package:dusks_burger_task/features/cart/presentation/views/widgets/apply_button.dart';
import 'package:dusks_burger_task/features/cart/presentation/views/widgets/coupon_field.dart';
import 'package:flutter/material.dart';

class CouponSection extends StatefulWidget {
  const CouponSection({super.key});

  @override
  State<CouponSection> createState() => _CouponSectionState();
}

class _CouponSectionState extends State<CouponSection> {
  bool hasText = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              CouponField(
                onChanged: (value) {
                  setState(() {
                    hasText = value;
                  });
                },
              ),
              SizedBox(width: 10),
              ApplyButton(enabled: hasText),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
