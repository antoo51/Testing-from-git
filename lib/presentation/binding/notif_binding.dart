import 'package:get/get.dart';
import 'package:talent_dna/presentation/controller/main/notif/notif_controller.dart';

class NotifBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotifController());
  }
}
