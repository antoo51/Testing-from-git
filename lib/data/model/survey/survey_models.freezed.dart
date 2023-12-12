// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyModel _$SurveyModelFromJson(Map<String, dynamic> json) {
  return _SurveyModel.fromJson(json);
}

/// @nodoc
mixin _$SurveyModel {
  int? get f_id => throw _privateConstructorUsedError;
  String? get f_item_name => throw _privateConstructorUsedError;
  int? get f_variabel_id => throw _privateConstructorUsedError;
  int? get f_dimensi_id => throw _privateConstructorUsedError;
  String? get f_option_name => throw _privateConstructorUsedError;
  String? get f_update => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyModelCopyWith<SurveyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyModelCopyWith<$Res> {
  factory $SurveyModelCopyWith(
          SurveyModel value, $Res Function(SurveyModel) then) =
      _$SurveyModelCopyWithImpl<$Res, SurveyModel>;
  @useResult
  $Res call(
      {int? f_id,
      String? f_item_name,
      int? f_variabel_id,
      int? f_dimensi_id,
      String? f_option_name,
      String? f_update});
}

/// @nodoc
class _$SurveyModelCopyWithImpl<$Res, $Val extends SurveyModel>
    implements $SurveyModelCopyWith<$Res> {
  _$SurveyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f_id = freezed,
    Object? f_item_name = freezed,
    Object? f_variabel_id = freezed,
    Object? f_dimensi_id = freezed,
    Object? f_option_name = freezed,
    Object? f_update = freezed,
  }) {
    return _then(_value.copyWith(
      f_id: freezed == f_id
          ? _value.f_id
          : f_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_item_name: freezed == f_item_name
          ? _value.f_item_name
          : f_item_name // ignore: cast_nullable_to_non_nullable
              as String?,
      f_variabel_id: freezed == f_variabel_id
          ? _value.f_variabel_id
          : f_variabel_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_dimensi_id: freezed == f_dimensi_id
          ? _value.f_dimensi_id
          : f_dimensi_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_option_name: freezed == f_option_name
          ? _value.f_option_name
          : f_option_name // ignore: cast_nullable_to_non_nullable
              as String?,
      f_update: freezed == f_update
          ? _value.f_update
          : f_update // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyModelImplCopyWith<$Res>
    implements $SurveyModelCopyWith<$Res> {
  factory _$$SurveyModelImplCopyWith(
          _$SurveyModelImpl value, $Res Function(_$SurveyModelImpl) then) =
      __$$SurveyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? f_id,
      String? f_item_name,
      int? f_variabel_id,
      int? f_dimensi_id,
      String? f_option_name,
      String? f_update});
}

/// @nodoc
class __$$SurveyModelImplCopyWithImpl<$Res>
    extends _$SurveyModelCopyWithImpl<$Res, _$SurveyModelImpl>
    implements _$$SurveyModelImplCopyWith<$Res> {
  __$$SurveyModelImplCopyWithImpl(
      _$SurveyModelImpl _value, $Res Function(_$SurveyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f_id = freezed,
    Object? f_item_name = freezed,
    Object? f_variabel_id = freezed,
    Object? f_dimensi_id = freezed,
    Object? f_option_name = freezed,
    Object? f_update = freezed,
  }) {
    return _then(_$SurveyModelImpl(
      f_id: freezed == f_id
          ? _value.f_id
          : f_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_item_name: freezed == f_item_name
          ? _value.f_item_name
          : f_item_name // ignore: cast_nullable_to_non_nullable
              as String?,
      f_variabel_id: freezed == f_variabel_id
          ? _value.f_variabel_id
          : f_variabel_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_dimensi_id: freezed == f_dimensi_id
          ? _value.f_dimensi_id
          : f_dimensi_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_option_name: freezed == f_option_name
          ? _value.f_option_name
          : f_option_name // ignore: cast_nullable_to_non_nullable
              as String?,
      f_update: freezed == f_update
          ? _value.f_update
          : f_update // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyModelImpl implements _SurveyModel {
  const _$SurveyModelImpl(
      {this.f_id,
      this.f_item_name,
      this.f_variabel_id,
      this.f_dimensi_id,
      this.f_option_name,
      this.f_update});

  factory _$SurveyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyModelImplFromJson(json);

  @override
  final int? f_id;
  @override
  final String? f_item_name;
  @override
  final int? f_variabel_id;
  @override
  final int? f_dimensi_id;
  @override
  final String? f_option_name;
  @override
  final String? f_update;

  @override
  String toString() {
    return 'SurveyModel(f_id: $f_id, f_item_name: $f_item_name, f_variabel_id: $f_variabel_id, f_dimensi_id: $f_dimensi_id, f_option_name: $f_option_name, f_update: $f_update)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyModelImpl &&
            (identical(other.f_id, f_id) || other.f_id == f_id) &&
            (identical(other.f_item_name, f_item_name) ||
                other.f_item_name == f_item_name) &&
            (identical(other.f_variabel_id, f_variabel_id) ||
                other.f_variabel_id == f_variabel_id) &&
            (identical(other.f_dimensi_id, f_dimensi_id) ||
                other.f_dimensi_id == f_dimensi_id) &&
            (identical(other.f_option_name, f_option_name) ||
                other.f_option_name == f_option_name) &&
            (identical(other.f_update, f_update) ||
                other.f_update == f_update));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, f_id, f_item_name, f_variabel_id,
      f_dimensi_id, f_option_name, f_update);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyModelImplCopyWith<_$SurveyModelImpl> get copyWith =>
      __$$SurveyModelImplCopyWithImpl<_$SurveyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyModelImplToJson(
      this,
    );
  }
}

abstract class _SurveyModel implements SurveyModel {
  const factory _SurveyModel(
      {final int? f_id,
      final String? f_item_name,
      final int? f_variabel_id,
      final int? f_dimensi_id,
      final String? f_option_name,
      final String? f_update}) = _$SurveyModelImpl;

  factory _SurveyModel.fromJson(Map<String, dynamic> json) =
      _$SurveyModelImpl.fromJson;

  @override
  int? get f_id;
  @override
  String? get f_item_name;
  @override
  int? get f_variabel_id;
  @override
  int? get f_dimensi_id;
  @override
  String? get f_option_name;
  @override
  String? get f_update;
  @override
  @JsonKey(ignore: true)
  _$$SurveyModelImplCopyWith<_$SurveyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurveyListModel _$SurveyListModelFromJson(Map<String, dynamic> json) {
  return _SurveyListModel.fromJson(json);
}

/// @nodoc
mixin _$SurveyListModel {
  bool? get status => throw _privateConstructorUsedError;
  List<SurveyModel>? get data => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyListModelCopyWith<SurveyListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyListModelCopyWith<$Res> {
  factory $SurveyListModelCopyWith(
          SurveyListModel value, $Res Function(SurveyListModel) then) =
      _$SurveyListModelCopyWithImpl<$Res, SurveyListModel>;
  @useResult
  $Res call({bool? status, List<SurveyModel>? data, String? msg});
}

/// @nodoc
class _$SurveyListModelCopyWithImpl<$Res, $Val extends SurveyListModel>
    implements $SurveyListModelCopyWith<$Res> {
  _$SurveyListModelCopyWithImpl(this._value, this._then);

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
              as List<SurveyModel>?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyListModelImplCopyWith<$Res>
    implements $SurveyListModelCopyWith<$Res> {
  factory _$$SurveyListModelImplCopyWith(_$SurveyListModelImpl value,
          $Res Function(_$SurveyListModelImpl) then) =
      __$$SurveyListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, List<SurveyModel>? data, String? msg});
}

/// @nodoc
class __$$SurveyListModelImplCopyWithImpl<$Res>
    extends _$SurveyListModelCopyWithImpl<$Res, _$SurveyListModelImpl>
    implements _$$SurveyListModelImplCopyWith<$Res> {
  __$$SurveyListModelImplCopyWithImpl(
      _$SurveyListModelImpl _value, $Res Function(_$SurveyListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$SurveyListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SurveyModel>?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyListModelImpl implements _SurveyListModel {
  const _$SurveyListModelImpl(
      {required this.status,
      required final List<SurveyModel>? data,
      required this.msg})
      : _data = data;

  factory _$SurveyListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyListModelImplFromJson(json);

  @override
  final bool? status;
  final List<SurveyModel>? _data;
  @override
  List<SurveyModel>? get data {
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
    return 'SurveyListModel(status: $status, data: $data, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyListModelImpl &&
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
  _$$SurveyListModelImplCopyWith<_$SurveyListModelImpl> get copyWith =>
      __$$SurveyListModelImplCopyWithImpl<_$SurveyListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyListModelImplToJson(
      this,
    );
  }
}

abstract class _SurveyListModel implements SurveyListModel {
  const factory _SurveyListModel(
      {required final bool? status,
      required final List<SurveyModel>? data,
      required final String? msg}) = _$SurveyListModelImpl;

  factory _SurveyListModel.fromJson(Map<String, dynamic> json) =
      _$SurveyListModelImpl.fromJson;

  @override
  bool? get status;
  @override
  List<SurveyModel>? get data;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$SurveyListModelImplCopyWith<_$SurveyListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
