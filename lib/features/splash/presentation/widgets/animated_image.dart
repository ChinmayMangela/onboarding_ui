import 'package:flutter/material.dart';

class AnimatedImage extends StatelessWidget {
  const AnimatedImage({
    super.key,
    required this.animationController,
    required this.animation,
  });

  final AnimationController animationController;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: animationController, builder: (context, child) {
      return Transform.scale(
        scale: animation.value,
        child: Image.asset(
          'assets/images/splash_image.png',
          fit: BoxFit.cover,
        ),
      );
    });
  }
}
