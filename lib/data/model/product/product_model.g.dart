// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      item_id: json['item_id'] as int?,
      f_item_variant_id: json['f_item_variant_id'] as int?,
      f_variant_name: json['f_variant_name'] as String?,
      f_price: json['f_price'] as String?,
      f_price_strike: json['f_price_strike'] as String?,
      f_copywriting: json['f_copywriting'] as String?,
      f_minisite_url: json['f_minisite_url'] as String?,
      f_flag: json['f_flag'] as int?,
      f_type_aff: json['f_type_aff'] as int?,
      f_commision_aff: json['f_commision_aff'] as int?,
      f_image: json['f_image'] as String?,
      f_desc: json['f_desc'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'item_id': instance.item_id,
      'f_item_variant_id': instance.f_item_variant_id,
      'f_variant_name': instance.f_variant_name,
      'f_price': instance.f_price,
      'f_price_strike': instance.f_price_strike,
      'f_copywriting': instance.f_copywriting,
      'f_minisite_url': instance.f_minisite_url,
      'f_flag': instance.f_flag,
      'f_type_aff': instance.f_type_aff,
      'f_commision_aff': instance.f_commision_aff,
      'f_image': instance.f_image,
      'f_desc': instance.f_desc,
    };
