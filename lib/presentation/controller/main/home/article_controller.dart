import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/articles/articles_model.dart';
import 'package:talent_dna/data/services/home_service.dart';

class ArticleController extends GetxController {
  var articleList = List<ArticleModel>.empty().obs;

  getArticles() async {
    try {
      Response response = await HomeService.getArticles();
      final articles = ArticleListModel.fromJson(response.data);
      articleList.value = articles.data ?? [];
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
