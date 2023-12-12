import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/banners/banners_model.dart';
import 'package:talent_dna/data/services/home_service.dart';

class BannerController extends GetxController {
  var bannerList = List<BannerModel>.empty().obs;

  getBanners() async {
    try {
      Response response = await HomeService.getBanners();
      final banners = BannerListModel.fromJson(response.data);
      bannerList.value = banners.data ?? [];
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
