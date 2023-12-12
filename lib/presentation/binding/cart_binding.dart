import 'package:get/get.dart';
import 'package:talent_dna/presentation/controller/main/cart/cart_controller.dart';

class CartBinding implements Bindings {
  @override
  void dependencies() {
    // Cart for Cart Screen
    Get.lazyPut(() => CartController());
  }
}
