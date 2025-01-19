import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  final String imageUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final fonts = GoogleFonts.josefinSans();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imageUrl),
        const SizedBox(height: 40),
        Text(title, style: fonts.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 35
        )),
        const SizedBox(height: 12),
        Text(subTitle, style: fonts.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 15
        ),),
      ],
    );
  }
}
