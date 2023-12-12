import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  final store = GetStorage();
  final isShowOnBoard = false.obs;

  Future<StorageService> init() async {
    final onboarding = store.read('onboarding');
    if (onboarding != null) {
      isShowOnBoard.value = onboarding;
    }
    return this;
  }
}
