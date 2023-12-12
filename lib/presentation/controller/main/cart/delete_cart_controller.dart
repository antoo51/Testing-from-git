// ignore_for_file: avoid_print
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/base/base_model.dart';
import 'package:talent_dna/data/services/cart.dart';
import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';

class DeleteCartController extends GetxController {
  String? message = '';

  deleteCart({
    required String idUser,
    required String itemVariantId,
    required bool toOtherScreen,
  }) async {
    try {
      Response response = await CartService.deleteCart(
        f_user_id: idUser,
        f_item_variant_id: itemVariantId,
      );
      final responseData = ResBaseAuthNewModel.fromJson(response.data);
      message = responseData.msg;

      showCustomSnackBar(
        Get.context!,
        'Success!',
        '${responseData.msg}',
      );
    } catch (e) {
      Get.snackbar(
        'Fail',
        message ?? 'Failed to delete',
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
