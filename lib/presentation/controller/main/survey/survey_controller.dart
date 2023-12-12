import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/articles/articles_model.dart';
import 'package:talent_dna/data/services/home_service.dart';

class SurveyController extends GetxController {
  var surveyList = List<ArticleModel>.empty().obs;

  getSurvey() async {
    try {
      Response response = await HomeService.getArticles();
      final articles = ArticleListModel.fromJson(response.data);
      surveyList.value = articles.data ?? [];
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
