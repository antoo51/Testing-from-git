import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:talent_dna/data/services/client.dart';

class ProductService {
  static Future<Response> getProduct() {
    return ClientDio.dio.get(
      "${dotenv.env['TDNA_URL']}/product",
    );
  }
}
