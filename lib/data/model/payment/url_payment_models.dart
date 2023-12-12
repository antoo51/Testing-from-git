// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/payment.dart';

part 'url_payment_models.freezed.dart';
part 'url_payment_models.g.dart';

@freezed
class UrlPaymentModel extends UrlPayment with _$UrlPaymentModel {
  const factory UrlPaymentModel({
    bool? success,
    String? data,
    String? message,
  }) = _UrlPaymentModel;

  factory UrlPaymentModel.fromJson(Map<String, dynamic> json) =>
      _$UrlPaymentModelFromJson(json);
}
