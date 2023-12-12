// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/cart.dart';

part 'cart_models.freezed.dart';
part 'cart_models.g.dart';

@freezed
class CartModel extends Cart with _$CartModel {
  const factory CartModel({
    int? f_id_cart,
    int? item_id,
    int? f_qty,
    String? f_nominal_afiliasi,
    String? f_affiliation_id,
    String? f_link_via,
    int? f_item_variant_id,
    String? f_master_training_name,
    String? f_variant_name,
    String? f_price,
    String? f_price_strike,
    int? f_commision_aff,
    String? f_image,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
class CartListModel with _$CartListModel {
  const factory CartListModel({
    required bool? status,
    required List<CartModel>? data,
    required String? msg,
  }) = _CartListModel;

  factory CartListModel.fromJson(Map<String, dynamic> json) =>
      _$CartListModelFromJson(json);
}
