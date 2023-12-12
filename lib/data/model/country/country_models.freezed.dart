// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  int? get f_country_id => throw _privateConstructorUsedError;
  String? get f_country_name => throw _privateConstructorUsedError;
  String? get f_country_code => throw _privateConstructorUsedError;
  int? get f_country_phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call(
      {int? f_country_id,
      String? f_country_name,
      String? f_country_code,
      int? f_country_phone});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f_country_id = freezed,
    Object? f_country_name = freezed,
    Object? f_country_code = freezed,
    Object? f_country_phone = freezed,
  }) {
    return _then(_value.copyWith(
      f_country_id: freezed == f_country_id
          ? _value.f_country_id
          : f_country_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_country_name: freezed == f_country_name
          ? _value.f_country_name
          : f_country_name // ignore: cast_nullable_to_non_nullable
              as String?,
      f_country_code: freezed == f_country_code
          ? _value.f_country_code
          : f_country_code // ignore: cast_nullable_to_non_nullable
              as String?,
      f_country_phone: freezed == f_country_phone
          ? _value.f_country_phone
          : f_country_phone // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryModelImplCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$CountryModelImplCopyWith(
          _$CountryModelImpl value, $Res Function(_$CountryModelImpl) then) =
      __$$CountryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? f_country_id,
      String? f_country_name,
      String? f_country_code,
      int? f_country_phone});
}

/// @nodoc
class __$$CountryModelImplCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$CountryModelImpl>
    implements _$$CountryModelImplCopyWith<$Res> {
  __$$CountryModelImplCopyWithImpl(
      _$CountryModelImpl _value, $Res Function(_$CountryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f_country_id = freezed,
    Object? f_country_name = freezed,
    Object? f_country_code = freezed,
    Object? f_country_phone = freezed,
  }) {
    return _then(_$CountryModelImpl(
      f_country_id: freezed == f_country_id
          ? _value.f_country_id
          : f_country_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_country_name: freezed == f_country_name
          ? _value.f_country_name
          : f_country_name // ignore: cast_nullable_to_non_nullable
              as String?,
      f_country_code: freezed == f_country_code
          ? _value.f_country_code
          : f_country_code // ignore: cast_nullable_to_non_nullable
              as String?,
      f_country_phone: freezed == f_country_phone
          ? _value.f_country_phone
          : f_country_phone // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryModelImpl implements _CountryModel {
  const _$CountryModelImpl(
      {this.f_country_id,
      this.f_country_name,
      this.f_country_code,
      this.f_country_phone});

  factory _$CountryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryModelImplFromJson(json);

  @override
  final int? f_country_id;
  @override
  final String? f_country_name;
  @override
  final String? f_country_code;
  @override
  final int? f_country_phone;

  @override
  String toString() {
    return 'CountryModel(f_country_id: $f_country_id, f_country_name: $f_country_name, f_country_code: $f_country_code, f_country_phone: $f_country_phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryModelImpl &&
            (identical(other.f_country_id, f_country_id) ||
                other.f_country_id == f_country_id) &&
            (identical(other.f_country_name, f_country_name) ||
                other.f_country_name == f_country_name) &&
            (identical(other.f_country_code, f_country_code) ||
                other.f_country_code == f_country_code) &&
            (identical(other.f_country_phone, f_country_phone) ||
                other.f_country_phone == f_country_phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, f_country_id, f_country_name,
      f_country_code, f_country_phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      __$$CountryModelImplCopyWithImpl<_$CountryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryModelImplToJson(
      this,
    );
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel(
      {final int? f_country_id,
      final String? f_country_name,
      final String? f_country_code,
      final int? f_country_phone}) = _$CountryModelImpl;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$CountryModelImpl.fromJson;

  @override
  int? get f_country_id;
  @override
  String? get f_country_name;
  @override
  String? get f_country_code;
  @override
  int? get f_country_phone;
  @override
  @JsonKey(ignore: true)
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryListModel _$CountryListModelFromJson(Map<String, dynamic> json) {
  return _CountryListModel.fromJson(json);
}

/// @nodoc
mixin _$CountryListModel {
  bool? get status => throw _privateConstructorUsedError;
  List<CountryModel>? get data => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryListModelCopyWith<CountryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryListModelCopyWith<$Res> {
  factory $CountryListModelCopyWith(
          CountryListModel value, $Res Function(CountryListModel) then) =
      _$CountryListModelCopyWithImpl<$Res, CountryListModel>;
  @useResult
  $Res call({bool? status, List<CountryModel>? data, String? msg});
}

/// @nodoc
class _$CountryListModelCopyWithImpl<$Res, $Val extends CountryListModel>
    implements $CountryListModelCopyWith<$Res> {
  _$CountryListModelCopyWithImpl(this._value, this._then);

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
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryListModelImplCopyWith<$Res>
    implements $CountryListModelCopyWith<$Res> {
  factory _$$CountryListModelImplCopyWith(_$CountryListModelImpl value,
          $Res Function(_$CountryListModelImpl) then) =
      __$$CountryListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, List<CountryModel>? data, String? msg});
}

/// @nodoc
class __$$CountryListModelImplCopyWithImpl<$Res>
    extends _$CountryListModelCopyWithImpl<$Res, _$CountryListModelImpl>
    implements _$$CountryListModelImplCopyWith<$Res> {
  __$$CountryListModelImplCopyWithImpl(_$CountryListModelImpl _value,
      $Res Function(_$CountryListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$CountryListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryListModelImpl implements _CountryListModel {
  const _$CountryListModelImpl(
      {required this.status,
      required final List<CountryModel>? data,
      required this.msg})
      : _data = data;

  factory _$CountryListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryListModelImplFromJson(json);

  @override
  final bool? status;
  final List<CountryModel>? _data;
  @override
  List<CountryModel>? get data {
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
    return 'CountryListModel(status: $status, data: $data, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryListModelImpl &&
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
  _$$CountryListModelImplCopyWith<_$CountryListModelImpl> get copyWith =>
      __$$CountryListModelImplCopyWithImpl<_$CountryListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryListModelImplToJson(
      this,
    );
  }
}

abstract class _CountryListModel implements CountryListModel {
  const factory _CountryListModel(
      {required final bool? status,
      required final List<CountryModel>? data,
      required final String? msg}) = _$CountryListModelImpl;

  factory _CountryListModel.fromJson(Map<String, dynamic> json) =
      _$CountryListModelImpl.fromJson;

  @override
  bool? get status;
  @override
  List<CountryModel>? get data;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$CountryListModelImplCopyWith<_$CountryListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
