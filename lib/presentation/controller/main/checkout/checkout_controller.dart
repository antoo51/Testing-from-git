// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/checkout/checkout_models.dart';
import 'package:talent_dna/data/model/payment/url_payment_models.dart';
import 'package:talent_dna/data/services/cart.dart';
import 'package:talent_dna/data/services/payment.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class CheckoutController extends GetxController {
  final StorageService storageService = Get.put(StorageService());
  String? message = '';

  checkout({
    required String idUser,
    required String email,
    required String phone,
    required String name,
    String? type,
  }) async {
    try {
      Response response = await CartService.checkout(
        id_user: idUser,
        f_email: email,
        f_hp: phone,
        f_nama: name,
        type: type,
      );
      final responseCheckout = CheckoutResponse.fromJson(response.data);
      var responseCheckoutList = responseCheckout.data;

      if (responseCheckoutList != null && responseCheckoutList.isNotEmpty) {
        var firstCheckoutModel = responseCheckoutList.first;
        final Response responseUrlPayment =
            await PaymentService.paymentMidtrans(
          orderId: firstCheckoutModel.order_no ?? '',
          grossAmount: firstCheckoutModel.total.toString(),
        );
        var responseDataPay = UrlPaymentModel.fromJson(responseUrlPayment.data);
        var uri = Uri.parse(responseDataPay.data ?? '');
        if (await canLaunchUrl(uri)) {
          Get.toNamed(MainScreen.routeName);
          await launchUrl(uri);
        } else {
          Get.snackbar(
            'Fail',
            'Sorry, something went wrong',
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
      } else {
        Get.snackbar(
          'Fail',
          'Sorry, something went wrong',
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
      print('$e');
      Get.snackbar(
        'Fail',
        'Failed checkout',
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
