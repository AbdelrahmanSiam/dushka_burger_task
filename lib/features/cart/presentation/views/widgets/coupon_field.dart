import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CouponField extends StatefulWidget {
  const CouponField({super.key, required this.onChanged});
  final Function(bool hasText) onChanged;
  @override
  State<CouponField> createState() => _CouponFieldState();
}

class _CouponFieldState extends State<CouponField> {
  final TextEditingController controller = TextEditingController();
  bool hasText = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      final newValue = controller.text.isNotEmpty;
      if (newValue != hasText) {
        setState(() {
          hasText = newValue;
        });
        widget.onChanged(hasText);
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(Iconsax.trash_copy),
            color: hasText ? AppColors.primary : Colors.red.shade200,
            onPressed: () {
              controller.clear();
            },
          ),
          labelText: S.of(context).coupon_hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.black, width: 1.5),
          ),
        ),
      ),
    );
  }
}
