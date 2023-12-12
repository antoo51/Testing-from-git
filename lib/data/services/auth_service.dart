// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart' as dio;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:talent_dna/data/services/client.dart';

class AuthService {
  static Future<dio.Response> login(
      {required String username, required String password}) {
    return ClientDio.dio.post(
      "${dotenv.env['TDNA_URL']}/user/get_user",
      data: {
        'email': username,
        'password': password,
      },
    );
  }

  static Future<dio.Response> loginWithSSO({
    required String firstName,
    required String lastName,
    required String email,
  }) {
    return ClientDio.dio.post(
      "${dotenv.env['TDNA_URL']}/user/create_user",
      queryParameters: {'google': true},
      data: {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
      },
    );
  }

  static Future<dio.Response> register({
    required String email,
    required String password,
    required String first_name,
    required String last_name,
    required String phone,
    required String corporate,
    required String company,
    required String job,
    required String npwp,
    required String country,
    required String address,
    bool isSSO = false,
  }) {
    final url =
        isSSO == true ? "/user/create_user?google=true" : "/user/create_user";
    return ClientDio.dio.post(
      "${dotenv.env['TDNA_URL']}$url",
      data: {
        'email': email,
        'password': password,
        'first_name': first_name,
        'last_name': last_name,
        'phone': phone,
        'corporate': corporate,
        'company': company,
        'job': job,
        'npwp': npwp,
        'country': country,
        'address': address,
      },
    );
  }

  static Future<dio.Response> updateProfile({dio.FormData? formData}) {
    return ClientDio.dio.post(
      "${dotenv.env['TDNA_URL']}/user/update_user",
      data: formData,
      options: dio.Options(contentType: 'multipart/form-data'),
    );
  }

  static Future<dio.Response> getJobs() {
    return ClientDio.dio.get(
      "${dotenv.env['TDNA_URL']}/job",
    );
  }

  static Future<dio.Response> getCountry() {
    return ClientDio.dio.get(
      "${dotenv.env['TDNA_URL']}/country",
    );
  }

  static Future<dio.Response> resetPassword({required String email}) {
    return ClientDio.dio.post(
      "${dotenv.env['TDNA_URL']}/user/reset_password",
      data: {
        'email': email,
      },
    );
  }
}
