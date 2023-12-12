// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:talent_dna/domain/entity/inventory.dart';

part 'inventory_personal_models.freezed.dart';
part 'inventory_personal_models.g.dart';

@freezed
class ClaimModel with _$ClaimModel {
  const factory ClaimModel({
    String? nama,
    String? date,
  }) = _ClaimModel;

  factory ClaimModel.fromJson(Map<String, dynamic> json) =>
      _$ClaimModelFromJson(json);
}

@freezed
class InventoryModel with _$InventoryModel {
  const factory InventoryModel({
    String? name_produk,
    String? link,
    String? image,
    String? date,
    int? type,
    String? account_id,
    int? total_kuota,
    int? sisa,
    String? string_kuota,
    ClaimModel? claim,
  }) = _InventoryModel;

  factory InventoryModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryModelFromJson(json);
}

@freezed
class InventoryListModel with _$InventoryListModel {
  const factory InventoryListModel({
    bool? status,
    List<InventoryModel>? data,
    String? message,
  }) = _InventoryListModel;

  factory InventoryListModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryListModelFromJson(json);
}
