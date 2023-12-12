// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseBaseModelImpl _$$ApiResponseBaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiResponseBaseModelImpl(
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$ApiResponseBaseModelImplToJson(
        _$ApiResponseBaseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$ApiResponseBaseAuthModelImpl _$$ApiResponseBaseAuthModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiResponseBaseAuthModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$ApiResponseBaseAuthModelImplToJson(
        _$ApiResponseBaseAuthModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ResBaseAuthNewModelImpl _$$ResBaseAuthNewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResBaseAuthNewModelImpl(
      status: json['status'] as int?,
      msg: json['msg'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$ResBaseAuthNewModelImplToJson(
        _$ResBaseAuthNewModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };
