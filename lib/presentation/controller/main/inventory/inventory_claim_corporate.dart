// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/auth/auth_model.dart';
import 'package:talent_dna/data/model/base/base_model.dart';
import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';
import 'package:talent_dna/data/services/inventory.dart';
import 'package:talent_dna/data/services/storage_service.dart';

class ClaimInventoryCorpoController extends GetxController {
  final StorageService storageService = Get.put(StorageService());
  String? message = 'Sepertinya link sudah di claim dengan akun yang sama';

  doClaimInventoryCorpo({
    required int event_id,
    required int type,
  }) async {
    try {
      final userDataBox = storageService.store.read('userData');
      final userData = ProfileModel.fromJson(userDataBox);

      Response response = await InventoryService.postClaimInventoryCorpo(
        account_id: userData.id ?? 0,
        email: userData.email ?? '',
        event_id: event_id,
        type: type,
        username: userData.username ?? '',
      );

      final responseData = ApiResponseBaseAuthModel.fromJson(response.data);
      message = responseData.message;

      showCustomSnackBar(
        Get.context!,
        'Success!',
        '${responseData.message}',
      );
    } catch (e) {
      Get.snackbar(
        'Fail',
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
