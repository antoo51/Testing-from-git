// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_personal_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClaimModelImpl _$$ClaimModelImplFromJson(Map<String, dynamic> json) =>
    _$ClaimModelImpl(
      nama: json['nama'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$ClaimModelImplToJson(_$ClaimModelImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'date': instance.date,
    };

_$InventoryModelImpl _$$InventoryModelImplFromJson(Map<String, dynamic> json) =>
    _$InventoryModelImpl(
      name_produk: json['name_produk'] as String?,
      link: json['link'] as String?,
      image: json['image'] as String?,
      date: json['date'] as String?,
      type: json['type'] as int?,
      account_id: json['account_id'] as String?,
      total_kuota: json['total_kuota'] as int?,
      sisa: json['sisa'] as int?,
      string_kuota: json['string_kuota'] as String?,
      claim: json['claim'] == null
          ? null
          : ClaimModel.fromJson(json['claim'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InventoryModelImplToJson(
        _$InventoryModelImpl instance) =>
    <String, dynamic>{
      'name_produk': instance.name_produk,
      'link': instance.link,
      'image': instance.image,
      'date': instance.date,
      'type': instance.type,
      'account_id': instance.account_id,
      'total_kuota': instance.total_kuota,
      'sisa': instance.sisa,
      'string_kuota': instance.string_kuota,
      'claim': instance.claim,
    };

_$InventoryListModelImpl _$$InventoryListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryListModelImpl(
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InventoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$InventoryListModelImplToJson(
        _$InventoryListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
