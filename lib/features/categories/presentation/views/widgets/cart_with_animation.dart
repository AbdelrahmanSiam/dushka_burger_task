import 'package:dusks_burger_task/features/categories/presentation/views/widgets/cart_without_animation.dart';
import 'package:flutter/material.dart';

class CartWithAnimation extends StatefulWidget {
  const CartWithAnimation({super.key});

  @override
  State<CartWithAnimation> createState() => _CartWithAnimationState();
}

class _CartWithAnimationState extends State<CartWithAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CartWithoutAnimation();
  }
}
