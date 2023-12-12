// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:talent_dna/data/services/client.dart';

class PaymentService {
  static Future<Response> paymentMidtrans({
    required String orderId,
    required String grossAmount,
  }) {
    return ClientDio.dio.post(
      "${dotenv.env['MTR_URL']}/snap-transaction",
      data: {
        'order_id': orderId,
        'gross_amount': grossAmount,
      },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'x-api-key': dotenv.env['X_API_KEY'],
        },
      ),
    );
  }
}
