// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:talent_dna/data/services/client.dart';

class InventoryService {
  static Future<Response> getListInventoryPersonal({
    required String idUser,
  }) {
    return ClientDio.dio.get(
      "${dotenv.env['TDNA_URL']}/inventory?id=$idUser",
    );
  }

  static Future<Response> getListInventoryCorporate({
    required String idUser,
  }) {
    return ClientDio.dio.get(
      "${dotenv.env['TDNA_URL']}/inventory/corporate?id=$idUser",
    );
  }

  static Future<Response> postClaimInventoryPersonal({
    required int idUser,
    required String linkClaim,
  }) {
    return ClientDio.dio
        .post("${dotenv.env['TDNA_URL']}/inventory/claim", data: {
      'id': idUser,
      'link': linkClaim,
    });
  }

  static Future<Response> postClaimInventoryCorpo({
    required int event_id,
    required int account_id,
    required String email,
    required String username,
    required int type,
  }) {
    return ClientDio.dio
        .post("${dotenv.env['TDNA_URL']}/inventory/corporate/claim", data: {
      'event_id': event_id,
      'account_id': account_id,
      'email': email,
      'username': username,
      'type': type,
    });
  }
}
