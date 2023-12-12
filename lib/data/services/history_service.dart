// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:talent_dna/data/services/client.dart';

class HistoryService {
  static Future<Response> getHistoryList({
    required String id_user,
  }) {
    return ClientDio.dio.post("${dotenv.env['TDNA_URL']}/order/history", data: {
      'id': id_user,
    });
  }
}
