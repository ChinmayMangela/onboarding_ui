import 'package:flutter/material.dart';
import 'package:onboarding_ui/constants/color_strings.dart';
import 'package:onboarding_ui/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:onboarding_ui/features/splash/presentation/widgets/animated_image.dart';
import 'package:onboarding_ui/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _zoomAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _zoomAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceIn),
    );

    _animationController.forward();

    Future.delayed(Duration(seconds: 3), () {
      navigatorKey.currentState!.pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStrings.splashBackgroundColor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: AnimatedImage(
        animationController: _animationController,
        animation: _zoomAnimation,
      ),
    );
  }
}
