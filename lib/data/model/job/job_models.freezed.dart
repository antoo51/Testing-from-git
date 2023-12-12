// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobsModel _$JobsModelFromJson(Map<String, dynamic> json) {
  return _JobsModel.fromJson(json);
}

/// @nodoc
mixin _$JobsModel {
  int? get f_id => throw _privateConstructorUsedError;
  String? get f_levelwork_desc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobsModelCopyWith<JobsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsModelCopyWith<$Res> {
  factory $JobsModelCopyWith(JobsModel value, $Res Function(JobsModel) then) =
      _$JobsModelCopyWithImpl<$Res, JobsModel>;
  @useResult
  $Res call({int? f_id, String? f_levelwork_desc});
}

/// @nodoc
class _$JobsModelCopyWithImpl<$Res, $Val extends JobsModel>
    implements $JobsModelCopyWith<$Res> {
  _$JobsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f_id = freezed,
    Object? f_levelwork_desc = freezed,
  }) {
    return _then(_value.copyWith(
      f_id: freezed == f_id
          ? _value.f_id
          : f_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_levelwork_desc: freezed == f_levelwork_desc
          ? _value.f_levelwork_desc
          : f_levelwork_desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobsModelImplCopyWith<$Res>
    implements $JobsModelCopyWith<$Res> {
  factory _$$JobsModelImplCopyWith(
          _$JobsModelImpl value, $Res Function(_$JobsModelImpl) then) =
      __$$JobsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? f_id, String? f_levelwork_desc});
}

/// @nodoc
class __$$JobsModelImplCopyWithImpl<$Res>
    extends _$JobsModelCopyWithImpl<$Res, _$JobsModelImpl>
    implements _$$JobsModelImplCopyWith<$Res> {
  __$$JobsModelImplCopyWithImpl(
      _$JobsModelImpl _value, $Res Function(_$JobsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f_id = freezed,
    Object? f_levelwork_desc = freezed,
  }) {
    return _then(_$JobsModelImpl(
      f_id: freezed == f_id
          ? _value.f_id
          : f_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_levelwork_desc: freezed == f_levelwork_desc
          ? _value.f_levelwork_desc
          : f_levelwork_desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobsModelImpl implements _JobsModel {
  const _$JobsModelImpl({this.f_id, this.f_levelwork_desc});

  factory _$JobsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobsModelImplFromJson(json);

  @override
  final int? f_id;
  @override
  final String? f_levelwork_desc;

  @override
  String toString() {
    return 'JobsModel(f_id: $f_id, f_levelwork_desc: $f_levelwork_desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsModelImpl &&
            (identical(other.f_id, f_id) || other.f_id == f_id) &&
            (identical(other.f_levelwork_desc, f_levelwork_desc) ||
                other.f_levelwork_desc == f_levelwork_desc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, f_id, f_levelwork_desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsModelImplCopyWith<_$JobsModelImpl> get copyWith =>
      __$$JobsModelImplCopyWithImpl<_$JobsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobsModelImplToJson(
      this,
    );
  }
}

abstract class _JobsModel implements JobsModel {
  const factory _JobsModel({final int? f_id, final String? f_levelwork_desc}) =
      _$JobsModelImpl;

  factory _JobsModel.fromJson(Map<String, dynamic> json) =
      _$JobsModelImpl.fromJson;

  @override
  int? get f_id;
  @override
  String? get f_levelwork_desc;
  @override
  @JsonKey(ignore: true)
  _$$JobsModelImplCopyWith<_$JobsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
