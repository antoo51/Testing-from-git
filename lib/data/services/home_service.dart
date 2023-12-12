import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:talent_dna/data/services/client.dart';

class HomeService {
  static Future<Response> getArticles() {
    return ClientDio.dio.get(
      "${dotenv.env['MTR_URL']}/article",
      options: Options(
        headers: {
          'x-api-key': dotenv.env['X_API_KEY'],
        },
      ),
    );
  }

  static Future<Response> getBanners() {
    return ClientDio.dio.get(
      "${dotenv.env['MTR_URL']}/banner",
      options: Options(
        headers: {
          'x-api-key': dotenv.env['X_API_KEY'],
        },
      ),
    );
  }

  static Future<Response> getNotif({required int userId}) {
    return ClientDio.dio.get(
      "${dotenv.env['MTR_URL']}/notification/$userId",
      options: Options(
        headers: {
          'x-api-key': dotenv.env['X_API_KEY'],
        },
      ),
    );
  }

  static Future<Response> updateNotif({required int id}) {
    return ClientDio.dio.post("${dotenv.env['MTR_URL']}/notification/read",
        options: Options(
          headers: {
            'x-api-key': dotenv.env['X_API_KEY'],
          },
        ),
        data: {
          'id': id,
        });
  }
}
