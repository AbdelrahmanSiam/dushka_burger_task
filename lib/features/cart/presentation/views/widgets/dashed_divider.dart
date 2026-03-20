import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final Color color;
  final double dashWidth;
  final double dashSpace;
  final double thickness;

  const DashedDivider({
    super.key,
    this.color = const Color(0xFFE0E0E0),
    this.dashWidth = 6,
    this.dashSpace = 4,
    this.thickness = 1,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = constraints.maxWidth;
        final dashCount = (totalWidth / (dashWidth + dashSpace)).floor();

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            dashCount,
            (_) => SizedBox(
              width: dashWidth,
              height: thickness,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            ),
          ),
        );
      },
    );
  }
}