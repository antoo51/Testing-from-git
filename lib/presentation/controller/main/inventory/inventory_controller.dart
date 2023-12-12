import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/inventory/inventory_personal_models.dart';
import 'package:talent_dna/data/services/inventory.dart';

class InventoryController extends GetxController {
  var inventoryList = List<InventoryModel>.empty().obs;

  getInventoryList({required String idUser}) async {
    try {
      Response response =
          await InventoryService.getListInventoryPersonal(idUser: idUser);
      if (response.data != null && response.data is Map) {
        var responseData = response.data;
        if (responseData.containsKey('data')) {
          var inventory =
              InventoryListModel.fromJson({'data': responseData['data']});
          inventoryList.value = inventory.data!;
        }
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
