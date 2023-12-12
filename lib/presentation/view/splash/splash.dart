import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/presentation/controller/splash/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  static const String routeName = '/splash-screen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Obx(
              () => AnimatedOpacity(
                duration: const Duration(seconds: 2),
                opacity: controller.backgroundOpacity.value,
                child: Image.asset(
                  ImgBackgroundSplashScreen.imgBackgroundSplashScreen,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                left: 0,
                right: 0,
                top: controller.logoPositionY.value,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeInOut,
                  width: controller.logoSize.value,
                  height: controller.logoSize.value,
                  child: Center(
                    child: Image.asset(
                      LogoWithTaglineBottom.logoWithTaglineBottom,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
