// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseBaseModel _$ApiResponseBaseModelFromJson(Map<String, dynamic> json) {
  return _ApiResponseBaseModel.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseBaseModel {
  bool? get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseBaseModelCopyWith<ApiResponseBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseBaseModelCopyWith<$Res> {
  factory $ApiResponseBaseModelCopyWith(ApiResponseBaseModel value,
          $Res Function(ApiResponseBaseModel) then) =
      _$ApiResponseBaseModelCopyWithImpl<$Res, ApiResponseBaseModel>;
  @useResult
  $Res call({bool? status, String? msg, dynamic data});
}

/// @nodoc
class _$ApiResponseBaseModelCopyWithImpl<$Res,
        $Val extends ApiResponseBaseModel>
    implements $ApiResponseBaseModelCopyWith<$Res> {
  _$ApiResponseBaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResponseBaseModelImplCopyWith<$Res>
    implements $ApiResponseBaseModelCopyWith<$Res> {
  factory _$$ApiResponseBaseModelImplCopyWith(_$ApiResponseBaseModelImpl value,
          $Res Function(_$ApiResponseBaseModelImpl) then) =
      __$$ApiResponseBaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? msg, dynamic data});
}

/// @nodoc
class __$$ApiResponseBaseModelImplCopyWithImpl<$Res>
    extends _$ApiResponseBaseModelCopyWithImpl<$Res, _$ApiResponseBaseModelImpl>
    implements _$$ApiResponseBaseModelImplCopyWith<$Res> {
  __$$ApiResponseBaseModelImplCopyWithImpl(_$ApiResponseBaseModelImpl _value,
      $Res Function(_$ApiResponseBaseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseBaseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiResponseBaseModelImpl implements _ApiResponseBaseModel {
  const _$ApiResponseBaseModelImpl(
      {required this.status, required this.msg, required this.data});

  factory _$ApiResponseBaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResponseBaseModelImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? msg;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ApiResponseBaseModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseBaseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, msg, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseBaseModelImplCopyWith<_$ApiResponseBaseModelImpl>
      get copyWith =>
          __$$ApiResponseBaseModelImplCopyWithImpl<_$ApiResponseBaseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResponseBaseModelImplToJson(
      this,
    );
  }
}

abstract class _ApiResponseBaseModel implements ApiResponseBaseModel {
  const factory _ApiResponseBaseModel(
      {required final bool? status,
      required final String? msg,
      required final dynamic data}) = _$ApiResponseBaseModelImpl;

  factory _ApiResponseBaseModel.fromJson(Map<String, dynamic> json) =
      _$ApiResponseBaseModelImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get msg;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ApiResponseBaseModelImplCopyWith<_$ApiResponseBaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ApiResponseBaseAuthModel _$ApiResponseBaseAuthModelFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseBaseAuthModel.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseBaseAuthModel {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseBaseAuthModelCopyWith<ApiResponseBaseAuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseBaseAuthModelCopyWith<$Res> {
  factory $ApiResponseBaseAuthModelCopyWith(ApiResponseBaseAuthModel value,
          $Res Function(ApiResponseBaseAuthModel) then) =
      _$ApiResponseBaseAuthModelCopyWithImpl<$Res, ApiResponseBaseAuthModel>;
  @useResult
  $Res call({bool? status, String? message, dynamic data});
}

/// @nodoc
class _$ApiResponseBaseAuthModelCopyWithImpl<$Res,
        $Val extends ApiResponseBaseAuthModel>
    implements $ApiResponseBaseAuthModelCopyWith<$Res> {
  _$ApiResponseBaseAuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResponseBaseAuthModelImplCopyWith<$Res>
    implements $ApiResponseBaseAuthModelCopyWith<$Res> {
  factory _$$ApiResponseBaseAuthModelImplCopyWith(
          _$ApiResponseBaseAuthModelImpl value,
          $Res Function(_$ApiResponseBaseAuthModelImpl) then) =
      __$$ApiResponseBaseAuthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, dynamic data});
}

/// @nodoc
class __$$ApiResponseBaseAuthModelImplCopyWithImpl<$Res>
    extends _$ApiResponseBaseAuthModelCopyWithImpl<$Res,
        _$ApiResponseBaseAuthModelImpl>
    implements _$$ApiResponseBaseAuthModelImplCopyWith<$Res> {
  __$$ApiResponseBaseAuthModelImplCopyWithImpl(
      _$ApiResponseBaseAuthModelImpl _value,
      $Res Function(_$ApiResponseBaseAuthModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseBaseAuthModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiResponseBaseAuthModelImpl implements _ApiResponseBaseAuthModel {
  const _$ApiResponseBaseAuthModelImpl(
      {required this.status, required this.message, required this.data});

  factory _$ApiResponseBaseAuthModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResponseBaseAuthModelImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ApiResponseBaseAuthModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseBaseAuthModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseBaseAuthModelImplCopyWith<_$ApiResponseBaseAuthModelImpl>
      get copyWith => __$$ApiResponseBaseAuthModelImplCopyWithImpl<
          _$ApiResponseBaseAuthModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResponseBaseAuthModelImplToJson(
      this,
    );
  }
}

abstract class _ApiResponseBaseAuthModel implements ApiResponseBaseAuthModel {
  const factory _ApiResponseBaseAuthModel(
      {required final bool? status,
      required final String? message,
      required final dynamic data}) = _$ApiResponseBaseAuthModelImpl;

  factory _ApiResponseBaseAuthModel.fromJson(Map<String, dynamic> json) =
      _$ApiResponseBaseAuthModelImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ApiResponseBaseAuthModelImplCopyWith<_$ApiResponseBaseAuthModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResBaseAuthNewModel _$ResBaseAuthNewModelFromJson(Map<String, dynamic> json) {
  return _ResBaseAuthNewModel.fromJson(json);
}

/// @nodoc
mixin _$ResBaseAuthNewModel {
  int? get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResBaseAuthNewModelCopyWith<ResBaseAuthNewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResBaseAuthNewModelCopyWith<$Res> {
  factory $ResBaseAuthNewModelCopyWith(
          ResBaseAuthNewModel value, $Res Function(ResBaseAuthNewModel) then) =
      _$ResBaseAuthNewModelCopyWithImpl<$Res, ResBaseAuthNewModel>;
  @useResult
  $Res call({int? status, String? msg, dynamic data});
}

/// @nodoc
class _$ResBaseAuthNewModelCopyWithImpl<$Res, $Val extends ResBaseAuthNewModel>
    implements $ResBaseAuthNewModelCopyWith<$Res> {
  _$ResBaseAuthNewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResBaseAuthNewModelImplCopyWith<$Res>
    implements $ResBaseAuthNewModelCopyWith<$Res> {
  factory _$$ResBaseAuthNewModelImplCopyWith(_$ResBaseAuthNewModelImpl value,
          $Res Function(_$ResBaseAuthNewModelImpl) then) =
      __$$ResBaseAuthNewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? msg, dynamic data});
}

/// @nodoc
class __$$ResBaseAuthNewModelImplCopyWithImpl<$Res>
    extends _$ResBaseAuthNewModelCopyWithImpl<$Res, _$ResBaseAuthNewModelImpl>
    implements _$$ResBaseAuthNewModelImplCopyWith<$Res> {
  __$$ResBaseAuthNewModelImplCopyWithImpl(_$ResBaseAuthNewModelImpl _value,
      $Res Function(_$ResBaseAuthNewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResBaseAuthNewModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResBaseAuthNewModelImpl implements _ResBaseAuthNewModel {
  const _$ResBaseAuthNewModelImpl(
      {required this.status, required this.msg, required this.data});

  factory _$ResBaseAuthNewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResBaseAuthNewModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? msg;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ResBaseAuthNewModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResBaseAuthNewModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, msg, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResBaseAuthNewModelImplCopyWith<_$ResBaseAuthNewModelImpl> get copyWith =>
      __$$ResBaseAuthNewModelImplCopyWithImpl<_$ResBaseAuthNewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResBaseAuthNewModelImplToJson(
      this,
    );
  }
}

abstract class _ResBaseAuthNewModel implements ResBaseAuthNewModel {
  const factory _ResBaseAuthNewModel(
      {required final int? status,
      required final String? msg,
      required final dynamic data}) = _$ResBaseAuthNewModelImpl;

  factory _ResBaseAuthNewModel.fromJson(Map<String, dynamic> json) =
      _$ResBaseAuthNewModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get msg;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ResBaseAuthNewModelImplCopyWith<_$ResBaseAuthNewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
