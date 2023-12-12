import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class ClientDio {
  static Dio dio = Dio();
  static onRequestInterceptor(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // options.baseUrl = dotenv.env['TDNA_URL']!;
    options.headers['Key'] = dotenv.env['HEADER_KEY'];
    return handler.next(options);
  }

  static void onResponseInterceptor(
      Response<dynamic> response, ResponseInterceptorHandler handler) async {
    return handler.next(response); // continue
  }

  static void handleCatch(DioException e, ErrorInterceptorHandler handler) {
    return handler.next(e);
  }

  static void onErrorInterceptor(
      DioException e, ErrorInterceptorHandler handler) async {
    return handler.next(e);
  }

  static dynamic init() {
    dio.interceptors.add(QueuedInterceptorsWrapper(
      onRequest: ClientDio.onRequestInterceptor,
      onResponse: ClientDio.onResponseInterceptor,
      onError: ClientDio.onErrorInterceptor,
    ));
  }
}
