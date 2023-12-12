// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:talent_dna/data/services/client.dart';

class CartService {
  static Future<Response> addToCart({
    required String id_user,
    required int item_id,
    required String f_item_variant_id,
    required String qty,
    String? link_via,
    String? voucher,
    String? id_afiliasi,
    String? nominal_afiliasi,
    String? affiliation_id,
  }) {
    return ClientDio.dio.post("${dotenv.env['TDNA_URL']}/cart/add_cart", data: {
      'id_user': id_user,
      'item_id': item_id,
      'f_item_variant_id': f_item_variant_id,
      'qty': qty,
      'link_via': null,
      'voucher': '',
      'id_afiliasi': null,
      'nominal_afiliasi': null,
      'affiliation_id': null,
    });
  }

  static Future<Response> getCart({required int f_user_id}) {
    return ClientDio.dio.post("${dotenv.env['TDNA_URL']}/cart/get_cart", data: {
      'f_user_id': f_user_id,
    });
  }

  static Future<Response> deleteCart({
    required String f_user_id,
    required String f_item_variant_id,
  }) {
    return ClientDio.dio
        .post("${dotenv.env['TDNA_URL']}/cart/delete_cart", data: {
      'f_user_id': f_user_id,
      'f_item_variant_id': f_item_variant_id,
    });
  }

  static Future<Response> checkout({
    required String id_user,
    required String f_nama,
    required String f_email,
    required String f_hp,
    String? type,
  }) {
    if (type != null) {
      return ClientDio.dio
          .post("${dotenv.env['TDNA_URL']}/cart/checkout", data: {
        'id_user': id_user,
        'f_nama': f_nama,
        'f_email': f_email,
        'f_hp': f_hp,
        'type': type,
      });
    }
    return ClientDio.dio.post("${dotenv.env['TDNA_URL']}/cart/checkout", data: {
      'id_user': id_user,
      'f_nama': f_nama,
      'f_email': f_email,
      'f_hp': f_hp,
    });
  }
}
