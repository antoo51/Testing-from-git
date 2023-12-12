// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/banners.dart';

part 'banners_model.freezed.dart';
part 'banners_model.g.dart';

@freezed
class BannerModel extends Banner with _$BannerModel {
  const factory BannerModel({
    int? id,
    String? title,
    String? description,
    String? url,
    String? banner_image_path,
    String? image,
    String? status,
    String? created_at,
    String? updated_at,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}

@freezed
class BannerListModel with _$BannerListModel {
  const factory BannerListModel({
    required bool? success,
    required List<BannerModel>? data,
    required String? message,
  }) = _BannerListModel;

  factory BannerListModel.fromJson(Map<String, dynamic> json) =>
      _$BannerListModelFromJson(json);
}
