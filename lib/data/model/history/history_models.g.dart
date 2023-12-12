// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryModelImpl _$$HistoryModelImplFromJson(Map<String, dynamic> json) =>
    _$HistoryModelImpl(
      f_id: json['f_id'] as int?,
      id_user: json['id_user'] as int?,
      f_order_no: json['f_order_no'] as String?,
      f_nama: json['f_nama'] as String?,
      f_email: json['f_email'] as String?,
      f_hp: json['f_hp'] as String?,
      f_status: json['f_status'] as String?,
      f_payment_type: json['f_payment_type'] as String?,
      f_link_via: json['f_link_via'] as String?,
      affiliation_id: json['affiliation_id'] as String?,
      f_nominal_afiliasi: json['f_nominal_afiliasi'] as String?,
      f_qty: json['f_qty'] as int?,
      f_price: json['f_price'] as String?,
      f_amount: json['f_amount'] as String?,
      f_variant_id: json['f_variant_id'] as int?,
      f_produk_id: json['f_produk_id'] as int?,
      f_price_distributor_id: json['f_price_distributor_id'] as String?,
      f_produk_desc: json['f_produk_desc'] as String?,
      f_detail: json['f_detail'] as String?,
      f_is_invoice: json['f_is_invoice'] as int?,
      f_add_date: json['f_add_date'] as String?,
      f_edit_date: json['f_edit_date'] as String?,
      f_send: json['f_send'] as int?,
      f_source: json['f_source'] as String?,
      f_notes: json['f_notes'] as String?,
    );

Map<String, dynamic> _$$HistoryModelImplToJson(_$HistoryModelImpl instance) =>
    <String, dynamic>{
      'f_id': instance.f_id,
      'id_user': instance.id_user,
      'f_order_no': instance.f_order_no,
      'f_nama': instance.f_nama,
      'f_email': instance.f_email,
      'f_hp': instance.f_hp,
      'f_status': instance.f_status,
      'f_payment_type': instance.f_payment_type,
      'f_link_via': instance.f_link_via,
      'affiliation_id': instance.affiliation_id,
      'f_nominal_afiliasi': instance.f_nominal_afiliasi,
      'f_qty': instance.f_qty,
      'f_price': instance.f_price,
      'f_amount': instance.f_amount,
      'f_variant_id': instance.f_variant_id,
      'f_produk_id': instance.f_produk_id,
      'f_price_distributor_id': instance.f_price_distributor_id,
      'f_produk_desc': instance.f_produk_desc,
      'f_detail': instance.f_detail,
      'f_is_invoice': instance.f_is_invoice,
      'f_add_date': instance.f_add_date,
      'f_edit_date': instance.f_edit_date,
      'f_send': instance.f_send,
      'f_source': instance.f_source,
      'f_notes': instance.f_notes,
    };

_$HistoryListModelImpl _$$HistoryListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryListModelImpl(
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$HistoryListModelImplToJson(
        _$HistoryListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'msg': instance.msg,
    };
