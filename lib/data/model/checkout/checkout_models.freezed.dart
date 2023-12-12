// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckoutModel _$CheckoutModelFromJson(Map<String, dynamic> json) {
  return _CheckoutModel.fromJson(json);
}

/// @nodoc
mixin _$CheckoutModel {
  String? get order_no => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutModelCopyWith<CheckoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutModelCopyWith<$Res> {
  factory $CheckoutModelCopyWith(
          CheckoutModel value, $Res Function(CheckoutModel) then) =
      _$CheckoutModelCopyWithImpl<$Res, CheckoutModel>;
  @useResult
  $Res call({String? order_no, int? total});
}

/// @nodoc
class _$CheckoutModelCopyWithImpl<$Res, $Val extends CheckoutModel>
    implements $CheckoutModelCopyWith<$Res> {
  _$CheckoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_no = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      order_no: freezed == order_no
          ? _value.order_no
          : order_no // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutModelImplCopyWith<$Res>
    implements $CheckoutModelCopyWith<$Res> {
  factory _$$CheckoutModelImplCopyWith(
          _$CheckoutModelImpl value, $Res Function(_$CheckoutModelImpl) then) =
      __$$CheckoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? order_no, int? total});
}

/// @nodoc
class __$$CheckoutModelImplCopyWithImpl<$Res>
    extends _$CheckoutModelCopyWithImpl<$Res, _$CheckoutModelImpl>
    implements _$$CheckoutModelImplCopyWith<$Res> {
  __$$CheckoutModelImplCopyWithImpl(
      _$CheckoutModelImpl _value, $Res Function(_$CheckoutModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_no = freezed,
    Object? total = freezed,
  }) {
    return _then(_$CheckoutModelImpl(
      order_no: freezed == order_no
          ? _value.order_no
          : order_no // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutModelImpl implements _CheckoutModel {
  const _$CheckoutModelImpl({this.order_no, this.total});

  factory _$CheckoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutModelImplFromJson(json);

  @override
  final String? order_no;
  @override
  final int? total;

  @override
  String toString() {
    return 'CheckoutModel(order_no: $order_no, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutModelImpl &&
            (identical(other.order_no, order_no) ||
                other.order_no == order_no) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order_no, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutModelImplCopyWith<_$CheckoutModelImpl> get copyWith =>
      __$$CheckoutModelImplCopyWithImpl<_$CheckoutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutModelImplToJson(
      this,
    );
  }
}

abstract class _CheckoutModel implements CheckoutModel {
  const factory _CheckoutModel({final String? order_no, final int? total}) =
      _$CheckoutModelImpl;

  factory _CheckoutModel.fromJson(Map<String, dynamic> json) =
      _$CheckoutModelImpl.fromJson;

  @override
  String? get order_no;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutModelImplCopyWith<_$CheckoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutResponse _$CheckoutResponseFromJson(Map<String, dynamic> json) {
  return _CheckoutResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckoutResponse {
  int? get status => throw _privateConstructorUsedError;
  List<CheckoutModel>? get data => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutResponseCopyWith<CheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutResponseCopyWith<$Res> {
  factory $CheckoutResponseCopyWith(
          CheckoutResponse value, $Res Function(CheckoutResponse) then) =
      _$CheckoutResponseCopyWithImpl<$Res, CheckoutResponse>;
  @useResult
  $Res call({int? status, List<CheckoutModel>? data, String? msg});
}

/// @nodoc
class _$CheckoutResponseCopyWithImpl<$Res, $Val extends CheckoutResponse>
    implements $CheckoutResponseCopyWith<$Res> {
  _$CheckoutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CheckoutModel>?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutResponseImplCopyWith<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  factory _$$CheckoutResponseImplCopyWith(_$CheckoutResponseImpl value,
          $Res Function(_$CheckoutResponseImpl) then) =
      __$$CheckoutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, List<CheckoutModel>? data, String? msg});
}

/// @nodoc
class __$$CheckoutResponseImplCopyWithImpl<$Res>
    extends _$CheckoutResponseCopyWithImpl<$Res, _$CheckoutResponseImpl>
    implements _$$CheckoutResponseImplCopyWith<$Res> {
  __$$CheckoutResponseImplCopyWithImpl(_$CheckoutResponseImpl _value,
      $Res Function(_$CheckoutResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$CheckoutResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CheckoutModel>?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutResponseImpl implements _CheckoutResponse {
  const _$CheckoutResponseImpl(
      {this.status, final List<CheckoutModel>? data, this.msg})
      : _data = data;

  factory _$CheckoutResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutResponseImplFromJson(json);

  @override
  final int? status;
  final List<CheckoutModel>? _data;
  @override
  List<CheckoutModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? msg;

  @override
  String toString() {
    return 'CheckoutResponse(status: $status, data: $data, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data), msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutResponseImplCopyWith<_$CheckoutResponseImpl> get copyWith =>
      __$$CheckoutResponseImplCopyWithImpl<_$CheckoutResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutResponseImplToJson(
      this,
    );
  }
}

abstract class _CheckoutResponse implements CheckoutResponse {
  const factory _CheckoutResponse(
      {final int? status,
      final List<CheckoutModel>? data,
      final String? msg}) = _$CheckoutResponseImpl;

  factory _CheckoutResponse.fromJson(Map<String, dynamic> json) =
      _$CheckoutResponseImpl.fromJson;

  @override
  int? get status;
  @override
  List<CheckoutModel>? get data;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutResponseImplCopyWith<_$CheckoutResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
