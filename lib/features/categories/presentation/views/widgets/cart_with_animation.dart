import 'package:dusks_burger_task/features/categories/presentation/views/widgets/cart_ripple.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/cart_without_animation.dart';
import 'package:flutter/material.dart';

class CartWithAnimation extends StatefulWidget {
  const CartWithAnimation({super.key, required this.badgeNumber, required this.onTap});
  final int badgeNumber;
  final void Function(int) onTap ;

  @override
  State<CartWithAnimation> createState() => _CartWithAnimationState();
}

class _CartWithAnimationState extends State<CartWithAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late CurvedAnimation curvedAnimation;
  @override
  void initState() {
    initStateBody();
    super.initState();
  }
  @override
  void didUpdateWidget(covariant CartWithAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    animateOrNot();
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: curvedAnimation,
            builder: (context, child) {
              if (widget.badgeNumber == 0) {
                return const SizedBox();
              } // If no orders no animation over card
              return CartRipple(curvedAnimation: curvedAnimation);
            },
          ),
          CartWithoutAnimation(badgeNumber: widget.badgeNumber , onTap:widget.onTap ,),
        ],
      ),
    );
  }

  void initStateBody() {
    animationController = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );
    curvedAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOut,
    );
    if (widget.badgeNumber > 0) {
      animationController.repeat(reverse: false);
    }
  }

  void animateOrNot() {
    if (widget.badgeNumber > 0 && !animationController.isAnimating) {
      animationController.repeat();
    }
    if (widget.badgeNumber == 0 && animationController.isAnimating) {
      animationController.stop();
    }
  }
}
