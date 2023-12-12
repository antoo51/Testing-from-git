// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/base/base_model.dart';
import 'package:talent_dna/data/model/history/history_models.dart';
import 'package:talent_dna/data/services/history_service.dart';

class GetHistoryController extends GetxController {
  var historyList = List<HistoryModel>.empty().obs;
  String? message = '';

  getHistory({
    required String idUser,
  }) async {
    try {
      Response response = await HistoryService.getHistoryList(
        id_user: idUser,
      );
      final responseData = ApiResponseBaseModel.fromJson(response.data);
      message = responseData.msg;
      if (response.data != null && response.data is Map) {
        var responseData = response.data;
        if (responseData.containsKey('data')) {
          var history =
              HistoryListModel.fromJson({'data': responseData['data']});
          historyList.value = history.data!;
        }
      }
    } catch (e) {
      Get.snackbar(
        'Fail',
        message ?? 'Failed get history',
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
