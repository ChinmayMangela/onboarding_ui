import 'package:flutter/material.dart';
import 'package:onboarding_ui/constants/onboarding_strings.dart';
import 'package:onboarding_ui/features/auth/presentation/screens/auth_page.dart';
import 'package:onboarding_ui/features/onboarding/presentation/widgets/onboarding_page.dart';
import 'package:onboarding_ui/main.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
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

  void _navigateToNextScreen() {
    if(_pageController.page == _onboardingPages.length - 1) {
      navigatorKey.currentState!.push(MaterialPageRoute(builder: (context) => AuthPage()));
    } else {
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  void _skipOnboarding() {
    navigatorKey.currentState!.push(MaterialPageRoute(builder: (context) => AuthPage()));
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (context, index) {
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
      onPressed: _skipOnboarding,
      child: const Text('Skip'),
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: _navigateToNextScreen,
      child: const Text('Next'),
    );
  }
}
