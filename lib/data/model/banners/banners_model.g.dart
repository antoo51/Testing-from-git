// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      banner_image_path: json['banner_image_path'] as String?,
      image: json['image'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'banner_image_path': instance.banner_image_path,
      'image': instance.image,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

_$BannerListModelImpl _$$BannerListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BannerListModelImpl(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$BannerListModelImplToJson(
        _$BannerListModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
