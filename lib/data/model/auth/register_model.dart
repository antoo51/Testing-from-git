// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/auth.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterResponseModel extends RegisterResponse
    with _$RegisterResponseModel {
  const factory RegisterResponseModel({
    String? first_name,
    String? last_name,
    String? phone,
    String? tgl_lahir,
    String? email,
    String? password,
    String? username,
    int? created_on,
    String? f_npwp,
    String? f_job_id,
    String? f_country_id,
    String? f_address,
    String? f_via,
  }) = _RegisterResponseModel;

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}
