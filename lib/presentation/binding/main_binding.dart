import 'package:get/get.dart';
import 'package:talent_dna/presentation/controller/auth/auth_controller.dart';
import 'package:talent_dna/presentation/controller/main/cart/cart_controller.dart';
import 'package:talent_dna/presentation/controller/main/history/history_controller.dart';
import 'package:talent_dna/presentation/controller/main/home/article_controller.dart';
import 'package:talent_dna/presentation/controller/main/home/banner_controller.dart';
import 'package:talent_dna/presentation/controller/main/inventory/inventory_controller.dart';
import 'package:talent_dna/presentation/controller/main/inventory/inventory_corporate_controller.dart';
import 'package:talent_dna/presentation/controller/main/notif/notif_controller.dart';
import 'package:talent_dna/presentation/controller/main/talent_dna/product_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    //home
    Get.lazyPut(() => ArticleController());
    Get.lazyPut(() => BannerController());
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => NotifController());

    // Product Menu Talent DNA
    Get.lazyPut(() => ProductController());

    // Cart for Home, Product List, Result, History, Inventory
    Get.lazyPut(() => CartController());

    Get.lazyPut(() => GetHistoryController());

    Get.lazyPut(() => InventoryController());
    Get.lazyPut(() => InventoryCorporateController());
  }
}
