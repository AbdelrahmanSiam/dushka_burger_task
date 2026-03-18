import 'package:flutter/material.dart';

class ToggleCircle extends StatelessWidget {
  const ToggleCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: BoxBorder.all(color: Colors.black, width: 2),
      ),
    );
  }
}