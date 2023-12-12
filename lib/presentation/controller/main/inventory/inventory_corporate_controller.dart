import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/inventory/inventory_corporate_models.dart';
import 'package:talent_dna/data/services/inventory.dart';

class InventoryCorporateController extends GetxController {
  var inventoryCorporateList = List<InventoryCorporateModel>.empty().obs;

  getInventoryList({required String idUser}) async {
    try {
      Response response =
          await InventoryService.getListInventoryCorporate(idUser: idUser);
      if (response.data != null && response.data is Map) {
        var responseData = response.data;
        if (responseData.containsKey('data')) {
          var inventory = InventoryCorporateListModel.fromJson(
              {'data': responseData['data']});
          inventoryCorporateList.value = inventory.data!;
        }
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
