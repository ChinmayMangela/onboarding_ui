import 'package:flutter/material.dart';
import 'package:onboarding_ui/theme/theme.dart';

import 'features/splash/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      theme: AppTheme.appTheme,
      home: SplashScreen(),
    );
  }
}
