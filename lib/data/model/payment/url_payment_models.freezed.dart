// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_payment_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UrlPaymentModel _$UrlPaymentModelFromJson(Map<String, dynamic> json) {
  return _UrlPaymentModel.fromJson(json);
}

/// @nodoc
mixin _$UrlPaymentModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlPaymentModelCopyWith<UrlPaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlPaymentModelCopyWith<$Res> {
  factory $UrlPaymentModelCopyWith(
          UrlPaymentModel value, $Res Function(UrlPaymentModel) then) =
      _$UrlPaymentModelCopyWithImpl<$Res, UrlPaymentModel>;
  @useResult
  $Res call({bool? success, String? data, String? message});
}

/// @nodoc
class _$UrlPaymentModelCopyWithImpl<$Res, $Val extends UrlPaymentModel>
    implements $UrlPaymentModelCopyWith<$Res> {
  _$UrlPaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlPaymentModelImplCopyWith<$Res>
    implements $UrlPaymentModelCopyWith<$Res> {
  factory _$$UrlPaymentModelImplCopyWith(_$UrlPaymentModelImpl value,
          $Res Function(_$UrlPaymentModelImpl) then) =
      __$$UrlPaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? data, String? message});
}

/// @nodoc
class __$$UrlPaymentModelImplCopyWithImpl<$Res>
    extends _$UrlPaymentModelCopyWithImpl<$Res, _$UrlPaymentModelImpl>
    implements _$$UrlPaymentModelImplCopyWith<$Res> {
  __$$UrlPaymentModelImplCopyWithImpl(
      _$UrlPaymentModelImpl _value, $Res Function(_$UrlPaymentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UrlPaymentModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlPaymentModelImpl implements _UrlPaymentModel {
  const _$UrlPaymentModelImpl({this.success, this.data, this.message});

  factory _$UrlPaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlPaymentModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? data;
  @override
  final String? message;

  @override
  String toString() {
    return 'UrlPaymentModel(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlPaymentModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlPaymentModelImplCopyWith<_$UrlPaymentModelImpl> get copyWith =>
      __$$UrlPaymentModelImplCopyWithImpl<_$UrlPaymentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlPaymentModelImplToJson(
      this,
    );
  }
}

abstract class _UrlPaymentModel implements UrlPaymentModel {
  const factory _UrlPaymentModel(
      {final bool? success,
      final String? data,
      final String? message}) = _$UrlPaymentModelImpl;

  factory _UrlPaymentModel.fromJson(Map<String, dynamic> json) =
      _$UrlPaymentModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UrlPaymentModelImplCopyWith<_$UrlPaymentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
