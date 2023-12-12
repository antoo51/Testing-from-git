import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/base.dart';

part 'base_model.freezed.dart';
part 'base_model.g.dart';

@freezed
class ApiResponseBaseModel extends ApiResponseBase with _$ApiResponseBaseModel {
  const factory ApiResponseBaseModel({
    required bool? status,
    required String? msg,
    required dynamic data,
  }) = _ApiResponseBaseModel;

  factory ApiResponseBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseBaseModelFromJson(json);
}

@freezed
class ApiResponseBaseAuthModel extends ApiResponseBaseAuth
    with _$ApiResponseBaseAuthModel {
  const factory ApiResponseBaseAuthModel({
    required bool? status,
    required String? message,
    required dynamic data,
  }) = _ApiResponseBaseAuthModel;

  factory ApiResponseBaseAuthModel.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseBaseAuthModelFromJson(json);
}

@freezed
class ResBaseAuthNewModel extends ApiResponseBaseNewAuth
    with _$ResBaseAuthNewModel {
  const factory ResBaseAuthNewModel({
    required int? status,
    required String? msg,
    required dynamic data,
  }) = _ResBaseAuthNewModel;

  factory ResBaseAuthNewModel.fromJson(Map<String, dynamic> json) =>
      _$ResBaseAuthNewModelFromJson(json);
}
