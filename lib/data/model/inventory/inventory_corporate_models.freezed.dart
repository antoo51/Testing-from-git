// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_corporate_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClaimCorporateModel _$ClaimCorporateModelFromJson(Map<String, dynamic> json) {
  return _ClaimCorporateModel.fromJson(json);
}

/// @nodoc
mixin _$ClaimCorporateModel {
  String? get nama => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get f_email => throw _privateConstructorUsedError;
  String? get f_survey_password => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimCorporateModelCopyWith<ClaimCorporateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimCorporateModelCopyWith<$Res> {
  factory $ClaimCorporateModelCopyWith(
          ClaimCorporateModel value, $Res Function(ClaimCorporateModel) then) =
      _$ClaimCorporateModelCopyWithImpl<$Res, ClaimCorporateModel>;
  @useResult
  $Res call(
      {String? nama,
      String? date,
      String? f_email,
      String? f_survey_password,
      int? type});
}

/// @nodoc
class _$ClaimCorporateModelCopyWithImpl<$Res, $Val extends ClaimCorporateModel>
    implements $ClaimCorporateModelCopyWith<$Res> {
  _$ClaimCorporateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = freezed,
    Object? date = freezed,
    Object? f_email = freezed,
    Object? f_survey_password = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      f_email: freezed == f_email
          ? _value.f_email
          : f_email // ignore: cast_nullable_to_non_nullable
              as String?,
      f_survey_password: freezed == f_survey_password
          ? _value.f_survey_password
          : f_survey_password // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClaimCorporateModelImplCopyWith<$Res>
    implements $ClaimCorporateModelCopyWith<$Res> {
  factory _$$ClaimCorporateModelImplCopyWith(_$ClaimCorporateModelImpl value,
          $Res Function(_$ClaimCorporateModelImpl) then) =
      __$$ClaimCorporateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nama,
      String? date,
      String? f_email,
      String? f_survey_password,
      int? type});
}

/// @nodoc
class __$$ClaimCorporateModelImplCopyWithImpl<$Res>
    extends _$ClaimCorporateModelCopyWithImpl<$Res, _$ClaimCorporateModelImpl>
    implements _$$ClaimCorporateModelImplCopyWith<$Res> {
  __$$ClaimCorporateModelImplCopyWithImpl(_$ClaimCorporateModelImpl _value,
      $Res Function(_$ClaimCorporateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = freezed,
    Object? date = freezed,
    Object? f_email = freezed,
    Object? f_survey_password = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ClaimCorporateModelImpl(
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      f_email: freezed == f_email
          ? _value.f_email
          : f_email // ignore: cast_nullable_to_non_nullable
              as String?,
      f_survey_password: freezed == f_survey_password
          ? _value.f_survey_password
          : f_survey_password // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimCorporateModelImpl implements _ClaimCorporateModel {
  const _$ClaimCorporateModelImpl(
      {this.nama, this.date, this.f_email, this.f_survey_password, this.type});

  factory _$ClaimCorporateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimCorporateModelImplFromJson(json);

  @override
  final String? nama;
  @override
  final String? date;
  @override
  final String? f_email;
  @override
  final String? f_survey_password;
  @override
  final int? type;

  @override
  String toString() {
    return 'ClaimCorporateModel(nama: $nama, date: $date, f_email: $f_email, f_survey_password: $f_survey_password, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimCorporateModelImpl &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.f_email, f_email) || other.f_email == f_email) &&
            (identical(other.f_survey_password, f_survey_password) ||
                other.f_survey_password == f_survey_password) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nama, date, f_email, f_survey_password, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimCorporateModelImplCopyWith<_$ClaimCorporateModelImpl> get copyWith =>
      __$$ClaimCorporateModelImplCopyWithImpl<_$ClaimCorporateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimCorporateModelImplToJson(
      this,
    );
  }
}

abstract class _ClaimCorporateModel implements ClaimCorporateModel {
  const factory _ClaimCorporateModel(
      {final String? nama,
      final String? date,
      final String? f_email,
      final String? f_survey_password,
      final int? type}) = _$ClaimCorporateModelImpl;

  factory _ClaimCorporateModel.fromJson(Map<String, dynamic> json) =
      _$ClaimCorporateModelImpl.fromJson;

  @override
  String? get nama;
  @override
  String? get date;
  @override
  String? get f_email;
  @override
  String? get f_survey_password;
  @override
  int? get type;
  @override
  @JsonKey(ignore: true)
  _$$ClaimCorporateModelImplCopyWith<_$ClaimCorporateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InventoryCorporateModel _$InventoryCorporateModelFromJson(
    Map<String, dynamic> json) {
  return _InventoryCorporateModel.fromJson(json);
}

/// @nodoc
mixin _$InventoryCorporateModel {
  int? get event_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  int? get account_id => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  int? get total_kuota => throw _privateConstructorUsedError;
  int? get sisa => throw _privateConstructorUsedError;
  String? get string_kuota => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  List<ClaimCorporateModel>? get claim => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryCorporateModelCopyWith<InventoryCorporateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryCorporateModelCopyWith<$Res> {
  factory $InventoryCorporateModelCopyWith(InventoryCorporateModel value,
          $Res Function(InventoryCorporateModel) then) =
      _$InventoryCorporateModelCopyWithImpl<$Res, InventoryCorporateModel>;
  @useResult
  $Res call(
      {int? event_id,
      String? name,
      String? date,
      int? account_id,
      int? type,
      int? total_kuota,
      int? sisa,
      String? string_kuota,
      String? image,
      String? link,
      List<ClaimCorporateModel>? claim});
}

/// @nodoc
class _$InventoryCorporateModelCopyWithImpl<$Res,
        $Val extends InventoryCorporateModel>
    implements $InventoryCorporateModelCopyWith<$Res> {
  _$InventoryCorporateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event_id = freezed,
    Object? name = freezed,
    Object? date = freezed,
    Object? account_id = freezed,
    Object? type = freezed,
    Object? total_kuota = freezed,
    Object? sisa = freezed,
    Object? string_kuota = freezed,
    Object? image = freezed,
    Object? link = freezed,
    Object? claim = freezed,
  }) {
    return _then(_value.copyWith(
      event_id: freezed == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      account_id: freezed == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      total_kuota: freezed == total_kuota
          ? _value.total_kuota
          : total_kuota // ignore: cast_nullable_to_non_nullable
              as int?,
      sisa: freezed == sisa
          ? _value.sisa
          : sisa // ignore: cast_nullable_to_non_nullable
              as int?,
      string_kuota: freezed == string_kuota
          ? _value.string_kuota
          : string_kuota // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      claim: freezed == claim
          ? _value.claim
          : claim // ignore: cast_nullable_to_non_nullable
              as List<ClaimCorporateModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryCorporateModelImplCopyWith<$Res>
    implements $InventoryCorporateModelCopyWith<$Res> {
  factory _$$InventoryCorporateModelImplCopyWith(
          _$InventoryCorporateModelImpl value,
          $Res Function(_$InventoryCorporateModelImpl) then) =
      __$$InventoryCorporateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? event_id,
      String? name,
      String? date,
      int? account_id,
      int? type,
      int? total_kuota,
      int? sisa,
      String? string_kuota,
      String? image,
      String? link,
      List<ClaimCorporateModel>? claim});
}

/// @nodoc
class __$$InventoryCorporateModelImplCopyWithImpl<$Res>
    extends _$InventoryCorporateModelCopyWithImpl<$Res,
        _$InventoryCorporateModelImpl>
    implements _$$InventoryCorporateModelImplCopyWith<$Res> {
  __$$InventoryCorporateModelImplCopyWithImpl(
      _$InventoryCorporateModelImpl _value,
      $Res Function(_$InventoryCorporateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event_id = freezed,
    Object? name = freezed,
    Object? date = freezed,
    Object? account_id = freezed,
    Object? type = freezed,
    Object? total_kuota = freezed,
    Object? sisa = freezed,
    Object? string_kuota = freezed,
    Object? image = freezed,
    Object? link = freezed,
    Object? claim = freezed,
  }) {
    return _then(_$InventoryCorporateModelImpl(
      event_id: freezed == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      account_id: freezed == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      total_kuota: freezed == total_kuota
          ? _value.total_kuota
          : total_kuota // ignore: cast_nullable_to_non_nullable
              as int?,
      sisa: freezed == sisa
          ? _value.sisa
          : sisa // ignore: cast_nullable_to_non_nullable
              as int?,
      string_kuota: freezed == string_kuota
          ? _value.string_kuota
          : string_kuota // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      claim: freezed == claim
          ? _value._claim
          : claim // ignore: cast_nullable_to_non_nullable
              as List<ClaimCorporateModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryCorporateModelImpl implements _InventoryCorporateModel {
  const _$InventoryCorporateModelImpl(
      {this.event_id,
      this.name,
      this.date,
      this.account_id,
      this.type,
      this.total_kuota,
      this.sisa,
      this.string_kuota,
      this.image,
      this.link,
      final List<ClaimCorporateModel>? claim})
      : _claim = claim;

  factory _$InventoryCorporateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryCorporateModelImplFromJson(json);

  @override
  final int? event_id;
  @override
  final String? name;
  @override
  final String? date;
  @override
  final int? account_id;
  @override
  final int? type;
  @override
  final int? total_kuota;
  @override
  final int? sisa;
  @override
  final String? string_kuota;
  @override
  final String? image;
  @override
  final String? link;
  final List<ClaimCorporateModel>? _claim;
  @override
  List<ClaimCorporateModel>? get claim {
    final value = _claim;
    if (value == null) return null;
    if (_claim is EqualUnmodifiableListView) return _claim;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InventoryCorporateModel(event_id: $event_id, name: $name, date: $date, account_id: $account_id, type: $type, total_kuota: $total_kuota, sisa: $sisa, string_kuota: $string_kuota, image: $image, link: $link, claim: $claim)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryCorporateModelImpl &&
            (identical(other.event_id, event_id) ||
                other.event_id == event_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.account_id, account_id) ||
                other.account_id == account_id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.total_kuota, total_kuota) ||
                other.total_kuota == total_kuota) &&
            (identical(other.sisa, sisa) || other.sisa == sisa) &&
            (identical(other.string_kuota, string_kuota) ||
                other.string_kuota == string_kuota) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality().equals(other._claim, _claim));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      event_id,
      name,
      date,
      account_id,
      type,
      total_kuota,
      sisa,
      string_kuota,
      image,
      link,
      const DeepCollectionEquality().hash(_claim));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryCorporateModelImplCopyWith<_$InventoryCorporateModelImpl>
      get copyWith => __$$InventoryCorporateModelImplCopyWithImpl<
          _$InventoryCorporateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryCorporateModelImplToJson(
      this,
    );
  }
}

abstract class _InventoryCorporateModel implements InventoryCorporateModel {
  const factory _InventoryCorporateModel(
      {final int? event_id,
      final String? name,
      final String? date,
      final int? account_id,
      final int? type,
      final int? total_kuota,
      final int? sisa,
      final String? string_kuota,
      final String? image,
      final String? link,
      final List<ClaimCorporateModel>? claim}) = _$InventoryCorporateModelImpl;

  factory _InventoryCorporateModel.fromJson(Map<String, dynamic> json) =
      _$InventoryCorporateModelImpl.fromJson;

  @override
  int? get event_id;
  @override
  String? get name;
  @override
  String? get date;
  @override
  int? get account_id;
  @override
  int? get type;
  @override
  int? get total_kuota;
  @override
  int? get sisa;
  @override
  String? get string_kuota;
  @override
  String? get image;
  @override
  String? get link;
  @override
  List<ClaimCorporateModel>? get claim;
  @override
  @JsonKey(ignore: true)
  _$$InventoryCorporateModelImplCopyWith<_$InventoryCorporateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InventoryCorporateListModel _$InventoryCorporateListModelFromJson(
    Map<String, dynamic> json) {
  return _InventoryCorporateListModel.fromJson(json);
}

/// @nodoc
mixin _$InventoryCorporateListModel {
  bool? get status => throw _privateConstructorUsedError;
  List<InventoryCorporateModel>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryCorporateListModelCopyWith<InventoryCorporateListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryCorporateListModelCopyWith<$Res> {
  factory $InventoryCorporateListModelCopyWith(
          InventoryCorporateListModel value,
          $Res Function(InventoryCorporateListModel) then) =
      _$InventoryCorporateListModelCopyWithImpl<$Res,
          InventoryCorporateListModel>;
  @useResult
  $Res call(
      {bool? status, List<InventoryCorporateModel>? data, String? message});
}

/// @nodoc
class _$InventoryCorporateListModelCopyWithImpl<$Res,
        $Val extends InventoryCorporateListModel>
    implements $InventoryCorporateListModelCopyWith<$Res> {
  _$InventoryCorporateListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<InventoryCorporateModel>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryCorporateListModelImplCopyWith<$Res>
    implements $InventoryCorporateListModelCopyWith<$Res> {
  factory _$$InventoryCorporateListModelImplCopyWith(
          _$InventoryCorporateListModelImpl value,
          $Res Function(_$InventoryCorporateListModelImpl) then) =
      __$$InventoryCorporateListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status, List<InventoryCorporateModel>? data, String? message});
}

/// @nodoc
class __$$InventoryCorporateListModelImplCopyWithImpl<$Res>
    extends _$InventoryCorporateListModelCopyWithImpl<$Res,
        _$InventoryCorporateListModelImpl>
    implements _$$InventoryCorporateListModelImplCopyWith<$Res> {
  __$$InventoryCorporateListModelImplCopyWithImpl(
      _$InventoryCorporateListModelImpl _value,
      $Res Function(_$InventoryCorporateListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$InventoryCorporateListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<InventoryCorporateModel>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryCorporateListModelImpl
    implements _InventoryCorporateListModel {
  const _$InventoryCorporateListModelImpl(
      {this.status, final List<InventoryCorporateModel>? data, this.message})
      : _data = data;

  factory _$InventoryCorporateListModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InventoryCorporateListModelImplFromJson(json);

  @override
  final bool? status;
  final List<InventoryCorporateModel>? _data;
  @override
  List<InventoryCorporateModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'InventoryCorporateListModel(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryCorporateListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryCorporateListModelImplCopyWith<_$InventoryCorporateListModelImpl>
      get copyWith => __$$InventoryCorporateListModelImplCopyWithImpl<
          _$InventoryCorporateListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryCorporateListModelImplToJson(
      this,
    );
  }
}

abstract class _InventoryCorporateListModel
    implements InventoryCorporateListModel {
  const factory _InventoryCorporateListModel(
      {final bool? status,
      final List<InventoryCorporateModel>? data,
      final String? message}) = _$InventoryCorporateListModelImpl;

  factory _InventoryCorporateListModel.fromJson(Map<String, dynamic> json) =
      _$InventoryCorporateListModelImpl.fromJson;

  @override
  bool? get status;
  @override
  List<InventoryCorporateModel>? get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InventoryCorporateListModelImplCopyWith<_$InventoryCorporateListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
