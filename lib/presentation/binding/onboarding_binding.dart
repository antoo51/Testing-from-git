import 'package:get/get.dart';
import 'package:talent_dna/presentation/controller/onboarding/onboarding_controller.dart';

class OnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}