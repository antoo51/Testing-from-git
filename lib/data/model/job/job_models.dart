// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/job.dart';

part 'job_models.freezed.dart';
part 'job_models.g.dart';

@freezed
class JobsModel extends Job with _$JobsModel {
  const factory JobsModel({
    int? f_id,
    String? f_levelwork_desc,
  }) = _JobsModel;

  factory JobsModel.fromJson(Map<String, dynamic> json) =>
      _$JobsModelFromJson(json);
}
