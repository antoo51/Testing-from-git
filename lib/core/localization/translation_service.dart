import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../localization/locales/en.dart';
import '../localization/locales/id.dart';
import '../localization/locales/my.dart';

class TranslationService extends Translations {
  static Locale get locale => Get.deviceLocale!;

  @override
  Map<String, Map<String, String>> get keys => {
        'en': EnglishTranslations.data,
        'id': IndonesianTranslations.data,
        'my': MalaysianTranslations.data,
      };

  Future<void> loadTranslations() async {
    final languageCode = locale.languageCode;
    final translations = keys[languageCode] ?? {};

    if (translations.isNotEmpty) {
      Get.updateLocale(locale);
    }
  }

  Future<void> changeLocale(Locale locale) async {
    await loadTranslations();
    Get.updateLocale(locale);
  }
}
