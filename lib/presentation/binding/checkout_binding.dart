import 'package:get/get.dart';
import 'package:talent_dna/presentation/controller/main/cart/cart_controller.dart';

class CheckoutBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CartController());
  }
}
