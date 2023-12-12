// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talent_dna/domain/entity/checkout.dart';

part 'checkout_models.freezed.dart';
part 'checkout_models.g.dart';

@freezed
class CheckoutModel extends Checkout with _$CheckoutModel {
  const factory CheckoutModel({
    String? order_no,
    int? total,
  }) = _CheckoutModel;

  factory CheckoutModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutModelFromJson(json);
}

@freezed
class CheckoutResponse with _$CheckoutResponse {
  const factory CheckoutResponse({
    int? status,
    List<CheckoutModel>? data,
    String? msg,
  }) = _CheckoutResponse;

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResponseFromJson(json);
}
