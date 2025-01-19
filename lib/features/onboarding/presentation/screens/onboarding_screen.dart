import 'package:flutter/material.dart';
import 'package:onboarding_ui/constants/onboarding_strings.dart';
import 'package:onboarding_ui/features/onboarding/presentation/widgets/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Widget> _onboardingPages = [
    OnboardingPage(
      imageUrl: OnboardingStrings.onboardingImageOne,
      title: OnboardingStrings.onboardingTitleOne,
      subTitle: OnboardingStrings.onboardingDescriptionOne,
    ),
    OnboardingPage(
      imageUrl: OnboardingStrings.onboardingImageTwo,
      title: OnboardingStrings.onboardingTitleTwo,
      subTitle: OnboardingStrings.onboardingDescriptionTwo,
    ),
    OnboardingPage(
      imageUrl: OnboardingStrings.onboardingImageThree,
      title: OnboardingStrings.onboardingTitleThree,
      subTitle: OnboardingStrings.onboardingDescriptionThree,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(itemBuilder: (context, index) {
                return _onboardingPages[index];
              }, itemCount: _onboardingPages.length,),
            ),
            _buildBottomButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildSkipButton(),
        _buildNextButton(),
      ],
    );
  }

  Widget _buildSkipButton() {
    return TextButton(
      onPressed: () {},
      child: const Text('Skip'),
    );
  }

  Widget _buildNextButton() {
    return TextButton(
      onPressed: () {},
      child: const Text('Next'),
    );
  }
}
