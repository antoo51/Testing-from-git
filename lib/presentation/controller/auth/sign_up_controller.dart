import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/base/base_model.dart';
import 'package:talent_dna/data/services/auth_service.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/controller/auth/auth_controller.dart';
import 'package:talent_dna/presentation/controller/auth/country_controller.dart';
import 'package:talent_dna/presentation/controller/auth/job_controller.dart';
import 'package:talent_dna/presentation/view/auth/approved.dart';
import 'package:talent_dna/presentation/view/auth/register_step_two.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';
import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';

class SignUpController extends GetxController {
  final AuthController signUpController = Get.put(AuthController());
  final StorageService storageService = Get.put(StorageService());
  final jobsController = Get.find<JobsController>();
  final countryController = Get.find<CountryController>();

  final formKey = GlobalKey<FormState>();
  final formKeyStepTwo = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController npwpController = TextEditingController();

  final passwordVisible = true.obs;
  final buttonPersonal = true.obs;
  final buttonOrganization = false.obs;
  final selectedCodePhone = '+62'.obs;
  final selectedJob = "".obs;
  final selectedCountry = "".obs;
  final isLoading = false.obs;

  bool isSSO = false;

  @override
  void onInit() {
    super.onInit();
    jobsController.getJobs();
    countryController.getCountry();
  }

  doSignUp() async {
    if (formKeyStepTwo.currentState!.validate()) {
      try {
        Response response = await AuthService.register(
            email: emailController.text,
            first_name: firstNameController.text,
            last_name: lastNameController.text,
            password: passwordController.text,
            phone: "${selectedCodePhone.value}${phoneNumberController.text}",
            corporate: buttonPersonal.isTrue ? "0" : "1",
            company: companyNameController.text,
            country: selectedCountry.value,
            job: selectedJob.value,
            npwp: npwpController.text,
            address: addressController.text,
            isSSO: isSSO);

        final responseData = ResBaseAuthNewModel.fromJson(response.data);
        if (responseData.status == 200) {
          showCustomSnackBar(
            Get.context!,
            'Info!',
            '${responseData.msg}',
          );

          if (isSSO == true) {
            if (responseData.data is List) {
              storageService.setProfile(
                  json: responseData.data[0], isSSO: isSSO);
            } else {
              storageService.setProfile(json: responseData.data, isSSO: isSSO);
            }
            storageService.store.write('isLogin', true);
            storageService.isLogin.value = true;
            Future.delayed(const Duration(seconds: 1), () {
              Get.offAllNamed(MainScreen.routeName);
            });
          } else if (buttonOrganization.isFalse) {
            Future.delayed(const Duration(seconds: 1), () {
              Get.toNamed(SignInScreen.routeName);
            });
          } else {
            Future.delayed(const Duration(seconds: 1), () {
              Get.toNamed(ApprovedScreen.routeName);
            });
          }
        } else {
          Get.snackbar(
            'Fail',
            responseData.msg ?? 'Failed to register',
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
      } catch (e) {
        Get.snackbar(
          'Fail',
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

  goToStepTwo({User? user}) {
    if (user != null) {
      List<String> fullName = user.displayName!.split(" ");

      emailController.text = user.email!;
      firstNameController.text = fullName[0];
      lastNameController.text = fullName[1];
      isSSO = true;

      Get.toNamed(RegisterScreenStepTwo.routeName);
    } else {
      if (formKey.currentState!.validate()) {
        Get.toNamed(RegisterScreenStepTwo.routeName);
      }
    }
  }
}
