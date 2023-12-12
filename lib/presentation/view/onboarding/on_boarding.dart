import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/onboarding/onboarding_controller.dart';
import 'package:talent_dna/presentation/view/onboarding/intro_page_one.dart';
import 'package:talent_dna/presentation/view/onboarding/intro_page_three.dart';
import 'package:talent_dna/presentation/view/onboarding/intro_page_two.dart';

class OnBoardingScreen extends GetView<OnboardingController> {
  static const String routeName = '/onboarding';

  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            Obx(
              () => PageView(
                controller: controller.pageController.value,
                onPageChanged: (index) {
                  controller.isLastPage.value = index == 2;
                },
                children: const [
                  IntroPageOne(),
                  IntroPageTwo(),
                  IntroPageThree(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Obx(
                    () => SmoothPageIndicator(
                      controller: controller.pageController.value,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Palette.white,
                        dotColor: Palette.greyDots,
                        dotHeight: 8.0,
                        dotWidth: 8.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 25,
                    ),
                    child: SizedBox(
                      width: 340,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: controller.onSkipPage,
                              child: const Text(
                                'Skip',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'MontserratBold',
                                    color: Color.fromARGB(140, 255, 255, 255)),
                              ),
                            ),
                            InkWell(
                              onTap: controller.onNextPage,
                              child: Image.asset(
                                IconNext.iconNext,
                                width: 60,
                                height: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
