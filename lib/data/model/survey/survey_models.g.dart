// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyModelImpl _$$SurveyModelImplFromJson(Map<String, dynamic> json) =>
    _$SurveyModelImpl(
      f_id: json['f_id'] as int?,
      f_item_name: json['f_item_name'] as String?,
      f_variabel_id: json['f_variabel_id'] as int?,
      f_dimensi_id: json['f_dimensi_id'] as int?,
      f_option_name: json['f_option_name'] as String?,
      f_update: json['f_update'] as String?,
    );

Map<String, dynamic> _$$SurveyModelImplToJson(_$SurveyModelImpl instance) =>
    <String, dynamic>{
      'f_id': instance.f_id,
      'f_item_name': instance.f_item_name,
      'f_variabel_id': instance.f_variabel_id,
      'f_dimensi_id': instance.f_dimensi_id,
      'f_option_name': instance.f_option_name,
      'f_update': instance.f_update,
    };

_$SurveyListModelImpl _$$SurveyListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SurveyListModelImpl(
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SurveyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$SurveyListModelImplToJson(
        _$SurveyListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'msg': instance.msg,
    };
