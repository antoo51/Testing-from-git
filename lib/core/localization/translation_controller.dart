import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslationController extends GetxController {
  RxString currentLocale = 'en'.obs;

  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    // Read language preferences when the app starts
    if (box.hasData('language')) {
      final savedLanguage = box.read('language');
      currentLocale.value = savedLanguage;
      Get.updateLocale(Locale(savedLanguage));
    } else {
      // If the language is not already saved in Get Storage, use the default language ('en')
      box.write('language', currentLocale.value);
    }
  }

  void changeLocale(String newLocale) {
    currentLocale.value = newLocale;
    Get.updateLocale(Locale(newLocale));

    // Save language preferences to Get Storage
    box.write('language', newLocale);
  }
}
