// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/cart/cart_models.dart';
import 'package:talent_dna/data/services/cart.dart';

class CartController extends GetxController {
  var cartList = List<CartModel>.empty().obs;

  getCarts({required int f_user_id}) async {
    try {
      Response response = await CartService.getCart(
        f_user_id: f_user_id,
      );
      final cart = CartListModel.fromJson(response.data);
      cartList.value = cart.data ?? [];
    } catch (e) {
      // ignore: avoid_print
      print('Error Cart: $e');
    }
  }
}
