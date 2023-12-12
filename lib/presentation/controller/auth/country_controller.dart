import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/country/country_models.dart';
import 'package:talent_dna/data/services/auth_service.dart';

class CountryController extends GetxController {
  var countryList = List<CountryModel>.empty().obs;

  getCountry() async {
    try {
      Response response = await AuthService.getCountry();
      final country = CountryListModel.fromJson(response.data);
      countryList.value = country.data ?? [];
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
