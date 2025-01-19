
import 'package:flutter/material.dart';
import 'package:onboarding_ui/constants/color_strings.dart';

class AppTheme {

  static ElevatedButtonThemeData _getElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorStrings.elevatedButtonBackgroundColor,
        foregroundColor: ColorStrings.elevatedButtonTextColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  static TextButtonThemeData _getTextButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorStrings.textButtonColor,
    ));
  }

  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: ColorStrings.onboardingBackgroundColor,
    elevatedButtonTheme: _getElevatedButtonTheme(),
    textButtonTheme: _getTextButtonTheme(),
  );
}