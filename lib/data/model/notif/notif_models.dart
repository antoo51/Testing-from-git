// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/notif.dart';

part 'notif_models.freezed.dart';
part 'notif_models.g.dart';

@freezed
class NotifModel extends Notif with _$NotifModel {
  const factory NotifModel({
    int? id,
    int? user_id,
    String? title,
    String? description,
    String? type,
    String? status,
    String? created_at,
    String? updated_at,
    String? is_read,
  }) = _NotifModel;

  factory NotifModel.fromJson(Map<String, dynamic> json) =>
      _$NotifModelFromJson(json);
}

@freezed
class NotifListModel with _$NotifListModel {
  const factory NotifListModel({
    required bool? success,
    required String? message,
    required List<NotifModel>? data,
  }) = _NotifListModel;

  factory NotifListModel.fromJson(Map<String, dynamic> json) =>
      _$NotifListModelFromJson(json);
}
