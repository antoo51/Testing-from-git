import 'package:get/get.dart';
import 'package:talent_dna/presentation/controller/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
