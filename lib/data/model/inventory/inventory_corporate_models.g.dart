// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_corporate_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClaimCorporateModelImpl _$$ClaimCorporateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClaimCorporateModelImpl(
      nama: json['nama'] as String?,
      date: json['date'] as String?,
      f_email: json['f_email'] as String?,
      f_survey_password: json['f_survey_password'] as String?,
      type: json['type'] as int?,
    );

Map<String, dynamic> _$$ClaimCorporateModelImplToJson(
        _$ClaimCorporateModelImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'date': instance.date,
      'f_email': instance.f_email,
      'f_survey_password': instance.f_survey_password,
      'type': instance.type,
    };

_$InventoryCorporateModelImpl _$$InventoryCorporateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryCorporateModelImpl(
      event_id: json['event_id'] as int?,
      name: json['name'] as String?,
      date: json['date'] as String?,
      account_id: json['account_id'] as int?,
      type: json['type'] as int?,
      total_kuota: json['total_kuota'] as int?,
      sisa: json['sisa'] as int?,
      string_kuota: json['string_kuota'] as String?,
      image: json['image'] as String?,
      link: json['link'] as String?,
      claim: (json['claim'] as List<dynamic>?)
          ?.map((e) => ClaimCorporateModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InventoryCorporateModelImplToJson(
        _$InventoryCorporateModelImpl instance) =>
    <String, dynamic>{
      'event_id': instance.event_id,
      'name': instance.name,
      'date': instance.date,
      'account_id': instance.account_id,
      'type': instance.type,
      'total_kuota': instance.total_kuota,
      'sisa': instance.sisa,
      'string_kuota': instance.string_kuota,
      'image': instance.image,
      'link': instance.link,
      'claim': instance.claim,
    };

_$InventoryCorporateListModelImpl _$$InventoryCorporateListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryCorporateListModelImpl(
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              InventoryCorporateModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$InventoryCorporateListModelImplToJson(
        _$InventoryCorporateListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
