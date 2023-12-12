import 'package:get/get.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';
import 'package:talent_dna/presentation/view/onboarding/on_boarding.dart';

class SplashController extends GetxController {
  final storageService = Get.find<StorageService>();
  final logoPositionY = RxDouble(-100.0);
  final logoSize = RxDouble(70.0);
  final backgroundOpacity = RxDouble(0.0);

  @override
  onReady() {
    Future.delayed(const Duration(milliseconds: 500), () {
      logoPositionY.value = Get.height / 3.3;
      logoSize.value = 260.0;
      backgroundOpacity.value = 1.0;
    });

    redirect();
  }

  redirect() async {
    Future.delayed(const Duration(seconds: 1), () async {
      if (storageService.isShowOnBoard.isTrue) {
        Future.delayed(const Duration(seconds: 2), () {
          Get.offAllNamed(MainScreen.routeName);
        });
      } else {
        await Future.delayed(const Duration(seconds: 2), () {
          Get.offAllNamed(OnBoardingScreen.routeName);
        });
      }
    });
  }
}
