// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notif_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotifModelImpl _$$NotifModelImplFromJson(Map<String, dynamic> json) =>
    _$NotifModelImpl(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      is_read: json['is_read'] as String?,
    );

Map<String, dynamic> _$$NotifModelImplToJson(_$NotifModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'is_read': instance.is_read,
    };

_$NotifListModelImpl _$$NotifListModelImplFromJson(Map<String, dynamic> json) =>
    _$NotifListModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NotifModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NotifListModelImplToJson(
        _$NotifListModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
