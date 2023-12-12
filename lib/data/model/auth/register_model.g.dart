// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterResponseModelImpl _$$RegisterResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterResponseModelImpl(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      phone: json['phone'] as String?,
      tgl_lahir: json['tgl_lahir'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      username: json['username'] as String?,
      created_on: json['created_on'] as int?,
      f_npwp: json['f_npwp'] as String?,
      f_job_id: json['f_job_id'] as String?,
      f_country_id: json['f_country_id'] as String?,
      f_address: json['f_address'] as String?,
      f_via: json['f_via'] as String?,
    );

Map<String, dynamic> _$$RegisterResponseModelImplToJson(
        _$RegisterResponseModelImpl instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'phone': instance.phone,
      'tgl_lahir': instance.tgl_lahir,
      'email': instance.email,
      'password': instance.password,
      'username': instance.username,
      'created_on': instance.created_on,
      'f_npwp': instance.f_npwp,
      'f_job_id': instance.f_job_id,
      'f_country_id': instance.f_country_id,
      'f_address': instance.f_address,
      'f_via': instance.f_via,
    };
