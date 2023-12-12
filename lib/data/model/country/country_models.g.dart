// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      f_country_id: json['f_country_id'] as int?,
      f_country_name: json['f_country_name'] as String?,
      f_country_code: json['f_country_code'] as String?,
      f_country_phone: json['f_country_phone'] as int?,
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'f_country_id': instance.f_country_id,
      'f_country_name': instance.f_country_name,
      'f_country_code': instance.f_country_code,
      'f_country_phone': instance.f_country_phone,
    };

_$CountryListModelImpl _$$CountryListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryListModelImpl(
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$CountryListModelImplToJson(
        _$CountryListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'msg': instance.msg,
    };
