// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/country.dart';

part 'country_models.freezed.dart';
part 'country_models.g.dart';

@freezed
class CountryModel extends Country with _$CountryModel {
  const factory CountryModel({
    int? f_country_id,
    String? f_country_name,
    String? f_country_code,
    int? f_country_phone,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}

@freezed
class CountryListModel with _$CountryListModel {
  const factory CountryListModel({
    required bool? status,
    required List<CountryModel>? data,
    required String? msg,
  }) = _CountryListModel;

  factory CountryListModel.fromJson(Map<String, dynamic> json) =>
      _$CountryListModelFromJson(json);
}
