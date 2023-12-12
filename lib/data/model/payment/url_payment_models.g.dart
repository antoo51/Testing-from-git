// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_payment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UrlPaymentModelImpl _$$UrlPaymentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UrlPaymentModelImpl(
      success: json['success'] as bool?,
      data: json['data'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$UrlPaymentModelImplToJson(
        _$UrlPaymentModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
