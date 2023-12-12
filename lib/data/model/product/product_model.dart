// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/product.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel extends Product with _$ProductModel {
  const factory ProductModel({
    int? item_id,
    int? f_item_variant_id,
    String? f_variant_name,
    String? f_price,
    String? f_price_strike,
    String? f_copywriting,
    String? f_minisite_url,
    int? f_flag,
    int? f_type_aff,
    int? f_commision_aff,
    String? f_image,
    String? f_desc,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ProductListModel with _$ProductListModel {
  const factory ProductListModel({
    required List<ProductModel> data,
  }) = _ProductListModel;

  factory ProductListModel.fromJson(Map<String, dynamic> json) {
    return ProductListModel(
      data:
          (json['data'] as List).map((e) => ProductModel.fromJson(e)).toList(),
    );
  }
}
