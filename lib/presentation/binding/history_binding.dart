import 'package:get/get.dart';
import 'package:talent_dna/presentation/controller/main/history/history_controller.dart';

class HistoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetHistoryController());
  }
}
