import 'package:dusks_burger_task/core/utils/app_colors.dart';
import 'package:dusks_burger_task/features/categories/presentation/views/widgets/cart_without_animation.dart';
import 'package:flutter/material.dart';

class CartWithAnimation extends StatefulWidget {
  const CartWithAnimation({super.key, required this.badgeNumber});
  final int badgeNumber;

  @override
  State<CartWithAnimation> createState() => _CartWithAnimationState();
}

class _CartWithAnimationState extends State<CartWithAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late CurvedAnimation curvedAnimation;
  @override
  void initState() {
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
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CartWithAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.badgeNumber > 0 && !animationController.isAnimating) {
      animationController.repeat();
    }
    if (widget.badgeNumber == 0 && animationController.isAnimating) {
      animationController.stop();
    }
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
              }// If no orders no animation over card
              return Container(
                width: 60 + (curvedAnimation.value * 50),
                height: 60 + (curvedAnimation.value * 50),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.navBarColor.withOpacity(
                    0.25 - (curvedAnimation.value * 0.25),
                  ),
                ),
              );
            },
          ),
          CartWithoutAnimation(badgeNumber: widget.badgeNumber),
        ],
      ),
    );
  }
}
