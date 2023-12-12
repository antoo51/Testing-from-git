// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/auth.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel extends Auth with _$AuthModel {
  const factory AuthModel({
    required String userId,
    required String token,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}

@freezed
class ProfileModel extends Profile with _$ProfileModel {
  const factory ProfileModel({
    int? id,
    String? username,
    String? image,
    String? email,
    dynamic createdOn,
    int? active,
    String? fullName,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    int? job,
    int? country,
    String? address,
    String? userType,
    String? companyName,
    dynamic corporate,
    String? npwpNumber,
    String? lastLogin,
    bool? isAffiliate,
    bool? isAdmin,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class ProfileResponseModel extends ProfileResponse with _$ProfileResponseModel {
  const factory ProfileResponseModel({
    int? id,
    String? username,
    String? email,
    dynamic created_on,
    String? last_login,
    int? active,
    String? first_name,
    String? last_name,
    int? country,
    int? job,
    String? company,
    String? phone,
    String? image,
    String? address,
    dynamic corporate,
    bool? is_affiliate,
    bool? is_admin,
    String? npwp,
  }) = _ProfileResponseModel;

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);
}

@freezed
class ProfileSSOResponseModel extends ProfileSSOResponse
    with _$ProfileSSOResponseModel {
  const factory ProfileSSOResponseModel({
    required int id,
    required String username,
    required String email,
    required int active,
    required String first_name,
    required String last_name,
    int? f_country_id,
    int? f_job_id,
    String? company,
    String? phone,
    String? image,
    String? f_address,
    int? corporate,
    int? f_flag_corporate,
    String? npwp,
  }) = _ProfileSSOResponseModel;

  factory ProfileSSOResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileSSOResponseModelFromJson(json);
}

@freezed
class UpdateProfileResponseModel extends UpdateProfileResponse
    with _$UpdateProfileResponseModel {
  const factory UpdateProfileResponseModel({
    required int id,
    required String username,
    required String email,
    required String tgl_lahir,
    required int active,
    required String first_name,
    required String last_name,
    String? image,
    String? company,
    required String phone,
    String? f_npwp,
  }) = _UpdateProfileResponseModel;

  factory UpdateProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileResponseModelFromJson(json);
}
