// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_corporate_models.freezed.dart';
part 'inventory_corporate_models.g.dart';

@freezed
class ClaimCorporateModel with _$ClaimCorporateModel {
  const factory ClaimCorporateModel({
    String? nama,
    String? date,
    String? f_email,
    String? f_survey_password,
    int? type,
  }) = _ClaimCorporateModel;

  factory ClaimCorporateModel.fromJson(Map<String, dynamic> json) =>
      _$ClaimCorporateModelFromJson(json);
}

@freezed
class InventoryCorporateModel with _$InventoryCorporateModel {
  const factory InventoryCorporateModel({
    int? event_id,
    String? name,
    String? date,
    int? account_id,
    int? type,
    int? total_kuota,
    int? sisa,
    String? string_kuota,
    String? image,
    String? link,
    List<ClaimCorporateModel>? claim,
  }) = _InventoryCorporateModel;

  factory InventoryCorporateModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryCorporateModelFromJson(json);
}

@freezed
class InventoryCorporateListModel with _$InventoryCorporateListModel {
  const factory InventoryCorporateListModel({
    bool? status,
    List<InventoryCorporateModel>? data,
    String? message,
  }) = _InventoryCorporateListModel;

  factory InventoryCorporateListModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryCorporateListModelFromJson(json);
}
