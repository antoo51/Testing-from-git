import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';

class OnboardingController extends GetxController {
  final isLastPage = false.obs;
  final pageController = PageController().obs;
  final storageService = Get.find<StorageService>();

  void onSkipPage() {
    storageService.store.write('onboarding', true);
    Get.offAllNamed(MainScreen.routeName);
  }

  void onNextPage() {
    if (isLastPage.isTrue) {
      onSkipPage();
    } else {
      pageController.value.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
  }
}
