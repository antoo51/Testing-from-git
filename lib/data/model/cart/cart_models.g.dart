// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      f_id_cart: json['f_id_cart'] as int?,
      item_id: json['item_id'] as int?,
      f_qty: json['f_qty'] as int?,
      f_nominal_afiliasi: json['f_nominal_afiliasi'] as String?,
      f_affiliation_id: json['f_affiliation_id'] as String?,
      f_link_via: json['f_link_via'] as String?,
      f_item_variant_id: json['f_item_variant_id'] as int?,
      f_master_training_name: json['f_master_training_name'] as String?,
      f_variant_name: json['f_variant_name'] as String?,
      f_price: json['f_price'] as String?,
      f_price_strike: json['f_price_strike'] as String?,
      f_commision_aff: json['f_commision_aff'] as int?,
      f_image: json['f_image'] as String?,
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'f_id_cart': instance.f_id_cart,
      'item_id': instance.item_id,
      'f_qty': instance.f_qty,
      'f_nominal_afiliasi': instance.f_nominal_afiliasi,
      'f_affiliation_id': instance.f_affiliation_id,
      'f_link_via': instance.f_link_via,
      'f_item_variant_id': instance.f_item_variant_id,
      'f_master_training_name': instance.f_master_training_name,
      'f_variant_name': instance.f_variant_name,
      'f_price': instance.f_price,
      'f_price_strike': instance.f_price_strike,
      'f_commision_aff': instance.f_commision_aff,
      'f_image': instance.f_image,
    };

_$CartListModelImpl _$$CartListModelImplFromJson(Map<String, dynamic> json) =>
    _$CartListModelImpl(
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$CartListModelImplToJson(_$CartListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'msg': instance.msg,
    };
