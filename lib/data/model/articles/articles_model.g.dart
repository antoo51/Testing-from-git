// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleModelImpl _$$ArticleModelImplFromJson(Map<String, dynamic> json) =>
    _$ArticleModelImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      short_description: json['short_description'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      article_image_path: json['article_image_path'] as String?,
    );

Map<String, dynamic> _$$ArticleModelImplToJson(_$ArticleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'short_description': instance.short_description,
      'description': instance.description,
      'image': instance.image,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'article_image_path': instance.article_image_path,
    };

_$ArticleListModelImpl _$$ArticleListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleListModelImpl(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ArticleListModelImplToJson(
        _$ArticleListModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
