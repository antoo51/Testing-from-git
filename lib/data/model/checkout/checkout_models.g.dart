// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckoutModelImpl _$$CheckoutModelImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutModelImpl(
      order_no: json['order_no'] as String?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$CheckoutModelImplToJson(_$CheckoutModelImpl instance) =>
    <String, dynamic>{
      'order_no': instance.order_no,
      'total': instance.total,
    };

_$CheckoutResponseImpl _$$CheckoutResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutResponseImpl(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CheckoutModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$CheckoutResponseImplToJson(
        _$CheckoutResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'msg': instance.msg,
    };
