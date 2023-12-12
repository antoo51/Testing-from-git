import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/product/product_model.dart';
import 'package:talent_dna/data/services/product_service.dart';

class ProductController extends GetxController {
  var productList = List<ProductModel>.empty().obs;

  getProducts() async {
    try {
      Response response = await ProductService.getProduct();
      // print('Response API: $response');
      if (response.data != null && response.data is Map) {
        var responseData = response.data;
        if (responseData.containsKey('data')) {
          var products =
              ProductListModel.fromJson({'data': responseData['data']});
          productList.value = products.data;
        }
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
