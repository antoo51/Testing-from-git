// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/history_order.dart';

part 'history_models.freezed.dart';
part 'history_models.g.dart';

@freezed
class HistoryModel extends History with _$HistoryModel {
  const factory HistoryModel({
    int? f_id,
    int? id_user,
    String? f_order_no,
    String? f_nama,
    String? f_email,
    String? f_hp,
    String? f_status,
    String? f_payment_type,
    String? f_link_via,
    String? affiliation_id,
    String? f_nominal_afiliasi,
    int? f_qty,
    String? f_price,
    String? f_amount,
    int? f_variant_id,
    int? f_produk_id,
    String? f_price_distributor_id,
    String? f_produk_desc,
    String? f_detail,
    int? f_is_invoice,
    String? f_add_date,
    String? f_edit_date,
    int? f_send,
    String? f_source,
    String? f_notes,
  }) = _HistoryModel;

  factory HistoryModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryModelFromJson(json);
}

@freezed
class HistoryListModel with _$HistoryListModel {
  const factory HistoryListModel({
    required bool? status,
    required List<HistoryModel>? data,
    required String? msg,
  }) = _HistoryListModel;

  factory HistoryListModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryListModelFromJson(json);
}
