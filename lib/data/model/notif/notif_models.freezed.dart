// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notif_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotifModel _$NotifModelFromJson(Map<String, dynamic> json) {
  return _NotifModel.fromJson(json);
}

/// @nodoc
mixin _$NotifModel {
  int? get id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get is_read => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotifModelCopyWith<NotifModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifModelCopyWith<$Res> {
  factory $NotifModelCopyWith(
          NotifModel value, $Res Function(NotifModel) then) =
      _$NotifModelCopyWithImpl<$Res, NotifModel>;
  @useResult
  $Res call(
      {int? id,
      int? user_id,
      String? title,
      String? description,
      String? type,
      String? status,
      String? created_at,
      String? updated_at,
      String? is_read});
}

/// @nodoc
class _$NotifModelCopyWithImpl<$Res, $Val extends NotifModel>
    implements $NotifModelCopyWith<$Res> {
  _$NotifModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? is_read = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      is_read: freezed == is_read
          ? _value.is_read
          : is_read // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotifModelImplCopyWith<$Res>
    implements $NotifModelCopyWith<$Res> {
  factory _$$NotifModelImplCopyWith(
          _$NotifModelImpl value, $Res Function(_$NotifModelImpl) then) =
      __$$NotifModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? user_id,
      String? title,
      String? description,
      String? type,
      String? status,
      String? created_at,
      String? updated_at,
      String? is_read});
}

/// @nodoc
class __$$NotifModelImplCopyWithImpl<$Res>
    extends _$NotifModelCopyWithImpl<$Res, _$NotifModelImpl>
    implements _$$NotifModelImplCopyWith<$Res> {
  __$$NotifModelImplCopyWithImpl(
      _$NotifModelImpl _value, $Res Function(_$NotifModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? is_read = freezed,
  }) {
    return _then(_$NotifModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      is_read: freezed == is_read
          ? _value.is_read
          : is_read // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotifModelImpl implements _NotifModel {
  const _$NotifModelImpl(
      {this.id,
      this.user_id,
      this.title,
      this.description,
      this.type,
      this.status,
      this.created_at,
      this.updated_at,
      this.is_read});

  factory _$NotifModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotifModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? user_id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final String? status;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? is_read;

  @override
  String toString() {
    return 'NotifModel(id: $id, user_id: $user_id, title: $title, description: $description, type: $type, status: $status, created_at: $created_at, updated_at: $updated_at, is_read: $is_read)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.is_read, is_read) || other.is_read == is_read));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user_id, title, description,
      type, status, created_at, updated_at, is_read);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifModelImplCopyWith<_$NotifModelImpl> get copyWith =>
      __$$NotifModelImplCopyWithImpl<_$NotifModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotifModelImplToJson(
      this,
    );
  }
}

abstract class _NotifModel implements NotifModel {
  const factory _NotifModel(
      {final int? id,
      final int? user_id,
      final String? title,
      final String? description,
      final String? type,
      final String? status,
      final String? created_at,
      final String? updated_at,
      final String? is_read}) = _$NotifModelImpl;

  factory _NotifModel.fromJson(Map<String, dynamic> json) =
      _$NotifModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get user_id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get type;
  @override
  String? get status;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get is_read;
  @override
  @JsonKey(ignore: true)
  _$$NotifModelImplCopyWith<_$NotifModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotifListModel _$NotifListModelFromJson(Map<String, dynamic> json) {
  return _NotifListModel.fromJson(json);
}

/// @nodoc
mixin _$NotifListModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<NotifModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotifListModelCopyWith<NotifListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifListModelCopyWith<$Res> {
  factory $NotifListModelCopyWith(
          NotifListModel value, $Res Function(NotifListModel) then) =
      _$NotifListModelCopyWithImpl<$Res, NotifListModel>;
  @useResult
  $Res call({bool? success, String? message, List<NotifModel>? data});
}

/// @nodoc
class _$NotifListModelCopyWithImpl<$Res, $Val extends NotifListModel>
    implements $NotifListModelCopyWith<$Res> {
  _$NotifListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotifModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotifListModelImplCopyWith<$Res>
    implements $NotifListModelCopyWith<$Res> {
  factory _$$NotifListModelImplCopyWith(_$NotifListModelImpl value,
          $Res Function(_$NotifListModelImpl) then) =
      __$$NotifListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, List<NotifModel>? data});
}

/// @nodoc
class __$$NotifListModelImplCopyWithImpl<$Res>
    extends _$NotifListModelCopyWithImpl<$Res, _$NotifListModelImpl>
    implements _$$NotifListModelImplCopyWith<$Res> {
  __$$NotifListModelImplCopyWithImpl(
      _$NotifListModelImpl _value, $Res Function(_$NotifListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NotifListModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotifModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotifListModelImpl implements _NotifListModel {
  const _$NotifListModelImpl(
      {required this.success,
      required this.message,
      required final List<NotifModel>? data})
      : _data = data;

  factory _$NotifListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotifListModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  final List<NotifModel>? _data;
  @override
  List<NotifModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotifListModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifListModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifListModelImplCopyWith<_$NotifListModelImpl> get copyWith =>
      __$$NotifListModelImplCopyWithImpl<_$NotifListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotifListModelImplToJson(
      this,
    );
  }
}

abstract class _NotifListModel implements NotifListModel {
  const factory _NotifListModel(
      {required final bool? success,
      required final String? message,
      required final List<NotifModel>? data}) = _$NotifListModelImpl;

  factory _NotifListModel.fromJson(Map<String, dynamic> json) =
      _$NotifListModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  List<NotifModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$NotifListModelImplCopyWith<_$NotifListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
