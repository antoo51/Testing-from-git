// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/articles.dart';

part 'articles_model.freezed.dart';
part 'articles_model.g.dart';

@freezed
class ArticleModel extends Article with _$ArticleModel {
  const factory ArticleModel({
    int? id,
    String? title,
    String? short_description,
    String? description,
    String? image,
    String? status,
    String? created_at,
    String? updated_at,
    String? article_image_path,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}

@freezed
class ArticleListModel with _$ArticleListModel {
  const factory ArticleListModel({
    required bool? success,
    required List<ArticleModel>? data,
    required String? message,
  }) = _ArticleListModel;

  factory ArticleListModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleListModelFromJson(json);
}
