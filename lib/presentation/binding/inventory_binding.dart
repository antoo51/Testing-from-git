import 'package:get/get.dart';
import 'package:talent_dna/presentation/controller/main/cart/cart_controller.dart';
import 'package:talent_dna/presentation/controller/main/inventory/inventory_controller.dart';
import 'package:talent_dna/presentation/controller/main/inventory/inventory_corporate_controller.dart';

class InventoryBinding implements Bindings {
  @override
  void dependencies() {
    // Cart for Home, Product List, Result, History, Inventory
    Get.lazyPut(() => CartController());

    Get.lazyPut(() => InventoryController());
    Get.lazyPut(() => InventoryCorporateController());
  }
}
