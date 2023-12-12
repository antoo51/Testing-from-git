// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/base/base_model.dart';
import 'package:talent_dna/data/services/inventory.dart';
import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';

class ClaimInventoryPersonalController extends GetxController {
  String? message = 'Sepertinya link sudah di claim dengan akun yang sama';

  doClaimInventoryPersonal({
    required int idUser,
    required String linkClaim,
  }) async {
    try {
      Response response = await InventoryService.postClaimInventoryPersonal(
        idUser: idUser,
        linkClaim: linkClaim,
      );
      final responseData = ApiResponseBaseAuthModel.fromJson(response.data);
      message = responseData.message;

      showCustomSnackBar(
        Get.context!,
        'Success!',
        responseData.message ?? 'Success',
      );
    } catch (e) {
      Get.snackbar(
        'Failed!',
        message ?? 'Sepertinya link sudah di claim dengan akun yang sama',
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
