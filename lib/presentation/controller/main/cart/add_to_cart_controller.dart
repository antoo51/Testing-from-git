// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/base/base_model.dart';
import 'package:talent_dna/data/services/cart.dart';
import 'package:talent_dna/presentation/view/Cart/cart.dart';
import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';

class AddToCartController extends GetxController {
  String? message = '';

  addToCart({
    required String idUser,
    required int itemId,
    required String itemVariantId,
    required String qty,
    required bool toOtherScreen,
  }) async {
    try {
      Response response = await CartService.addToCart(
        id_user: idUser,
        item_id: itemId,
        f_item_variant_id: itemVariantId,
        qty: qty,
      );
      final responseData = ResBaseAuthNewModel.fromJson(response.data);
      message = responseData.msg;

      showCustomSnackBar(
        Get.context!,
        'Success!',
        '${responseData.msg}',
      );
      // For Navigate
      if (toOtherScreen) {
        Future.delayed(const Duration(seconds: 2), () {
          Get.toNamed(CartScreen.routeName);
        });
      }
    } catch (e) {
      Get.snackbar(
        'Fail',
        message ?? 'Failed add to cart',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Palette.redNotice,
        colorText: Palette.white,
        margin: const EdgeInsets.only(
          bottom: 50,
          right: 10,
          left: 10,
        ),
      );
    }
  }
}
