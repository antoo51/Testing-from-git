import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/base/base_model.dart';
import 'package:talent_dna/data/services/auth_service.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';

class ResetPasswordController extends GetxController {
  String? message = '';

  resetPassword({required String email}) async {
    try {
      Response response = await AuthService.resetPassword(email: email);
      final responseData = ResBaseAuthNewModel.fromJson(response.data);
      message = responseData.msg;

      showCustomSnackBar(
        Get.context!,
        'Success!',
        message ?? 'Success',
      );
      // For Navigate
      Future.delayed(const Duration(seconds: 1), () {
        Get.toNamed(SignInScreen.routeName);
      });
    } catch (e) {
      // print('Log Error: $e');
      Get.snackbar(
        'Failed!',
        message ?? '',
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
