import 'package:dusks_burger_task/core/utils/app_colors.dart';
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
  late CurvedAnimation curvedAnimation;
  @override
  void initState() {
    animationController = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: false);
    curvedAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOut,
    );

    super.initState();
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
          CartWithoutAnimation(),
        ],
      ),
    );
  }
}
