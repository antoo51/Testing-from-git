import 'package:get/get.dart';
import 'package:talent_dna/presentation/controller/main/inventory/inventory_controller.dart';

class SurveyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InventoryController());
  }
}
