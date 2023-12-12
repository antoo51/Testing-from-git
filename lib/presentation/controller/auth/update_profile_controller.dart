// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/auth/auth_model.dart';
import 'package:talent_dna/data/model/base/base_model.dart';
import 'package:talent_dna/data/services/auth_service.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/controller/auth/auth_controller.dart';
import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';
import 'package:uuid/uuid.dart';

class UpdateProfileController extends GetxController {
  final AuthController authController = Get.put(AuthController());
  final storageService = Get.find<StorageService>();

  doUpdateProfile({
    required String user_id,
    String? first_name,
    String? last_name,
    String? company,
    String? phone,
    String? npwp,
    String? birthdate,
    String? job,
    String? country,
    String? address,
    XFile? webImage,
  }) async {
    const Uuid uuid = Uuid();
    final userDataBox = storageService.store.read('userData');
    final userData = ProfileModel.fromJson(userDataBox);
    final dio.FormData formDataMap = dio.FormData.fromMap({
      'user_id': user_id,
      'first_name': first_name,
      'last_name': last_name,
      'company': company,
      'phone': phone,
      'npwp': npwp,
      'birthdate': birthdate,
      'job': job,
      'country': country,
      'address': address,
    });

    if (webImage != null) {
      final imageBytes = await webImage.readAsBytes();
      final mimeType = webImage.mimeType?.split("/");
      final String fileNameImage = '${uuid.v4()}-profile.${mimeType?[1]}';

      formDataMap.files.add(MapEntry(
        'foto',
        dio.MultipartFile.fromBytes(
          imageBytes,
          filename: fileNameImage,
          contentType: MediaType('image', mimeType![1]),
        ),
      ));
    }

    try {
      dio.Response response = await AuthService.updateProfile(
        formData: formDataMap,
      );
      final responseData = ResBaseAuthNewModel.fromJson(response.data);

      if (responseData.status == 200) {
        final updateData =
            UpdateProfileResponseModel.fromJson(responseData.data[0]);
        ProfileModel profileData = ProfileModel(
          id: updateData.id,
          username: updateData.username,
          active: updateData.active,
          email: updateData.email,
          fullName: "$first_name $last_name",
          firstName: first_name,
          lastName: last_name,
          phoneNumber: phone,
          npwpNumber: updateData.f_npwp,
          job: job != null ? int.parse(job) : userData.job,
          country: country != null ? int.parse(country) : userData.country,
          address: address,
          userType: userData.userType,
          companyName: userData.companyName,
          corporate: userData.corporate,
          image: updateData.image == null || updateData.image == 'null' ? null : updateData.image,
        );
        storageService.store.write('userData', profileData.toJson());
        storageService.profile.value = profileData;

        showCustomSnackBar(
          Get.context!,
          'Success!',
          responseData.msg ?? 'Success',
        );
        Future.delayed(const Duration(seconds: 1), () {
          Get.back();
        });
      } else {
        Get.snackbar(
          'Failed!',
          responseData.msg ?? 'Failed to update',
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
