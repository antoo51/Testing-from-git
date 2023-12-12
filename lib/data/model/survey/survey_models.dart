// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/survey.dart';

part 'survey_models.freezed.dart';
part 'survey_models.g.dart';

@freezed
class SurveyModel extends Survey with _$SurveyModel {
  const factory SurveyModel({
    int? f_id,
    String? f_item_name,
    int? f_variabel_id,
    int? f_dimensi_id,
    String? f_option_name,
    String? f_update,
  }) = _SurveyModel;

  factory SurveyModel.fromJson(Map<String, dynamic> json) =>
      _$SurveyModelFromJson(json);
}

@freezed
class SurveyListModel with _$SurveyListModel {
  const factory SurveyListModel({
    required bool? status,
    required List<SurveyModel>? data,
    required String? msg,
  }) = _SurveyListModel;

  factory SurveyListModel.fromJson(Map<String, dynamic> json) =>
      _$SurveyListModelFromJson(json);
}
