import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/base/base_model.dart';
import 'package:talent_dna/data/services/auth_service.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/controller/auth/auth_controller.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';
import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';

class SignInController extends GetxController {
  final AuthController authController = Get.put(AuthController());
  final StorageService storageService = Get.put(StorageService());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final passwordVisible = true.obs;
  final isLoading = false.obs;
  final formKey = GlobalKey<FormState>();

  void successLogin({
    required ResBaseAuthNewModel responseData,
    isSSO = false,
  }) {
    if (responseData.status == 200) {
      storageService.setProfile(json: responseData.data, isSSO: isSSO);
      showCustomSnackBar(
        Get.context!,
        'Success!',
        responseData.msg ?? 'Success',
      );

      storageService.store.write('isLogin', true);
      storageService.isLogin.value = true;
      // For Navigate
      Future.delayed(const Duration(seconds: 1), () {
        Get.offAllNamed(MainScreen.routeName);
      });
    } else {
      Get.snackbar(
        'Failed!',
        responseData.msg ?? 'Failed to Sign In',
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

  doSignIn() async {
    if (isLoading.isTrue) {
      return null;
    }

    if (formKey.currentState!.validate()) {
      try {
        isLoading.value = true;
        Response response = await AuthService.login(
          username: emailController.text,
          password: passwordController.text,
        );
        final responseData = ResBaseAuthNewModel.fromJson(response.data);

        successLogin(responseData: responseData);
      } catch (e) {
        Get.snackbar(
          'Failed!',
          e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Palette.redNotice,
          colorText: Palette.white,
          margin: const EdgeInsets.only(
            bottom: 50,
            right: 10,
            left: 10,
          ),
        );
      } finally {
        isLoading.value = false;
      }
    }
  }

  doSSOSignIn(User user) async {
    try {
      List<String> fullName = user.displayName!.split(" ");
      String firstName = fullName[0];
      String lastName =
          fullName.length > 1 ? fullName[fullName.length - 1] : '';
      String email = user.email!;
      Response response = await AuthService.loginWithSSO(
        firstName: firstName,
        lastName: lastName,
        email: email,
      );
      final responseData = ResBaseAuthNewModel.fromJson(response.data);

      successLogin(responseData: responseData, isSSO: true);
    } catch (e) {
      Get.snackbar(
        'Failed!',
        e.toString(),
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
