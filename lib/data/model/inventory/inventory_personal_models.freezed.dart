// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_personal_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClaimModel _$ClaimModelFromJson(Map<String, dynamic> json) {
  return _ClaimModel.fromJson(json);
}

/// @nodoc
mixin _$ClaimModel {
  String? get nama => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimModelCopyWith<ClaimModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimModelCopyWith<$Res> {
  factory $ClaimModelCopyWith(
          ClaimModel value, $Res Function(ClaimModel) then) =
      _$ClaimModelCopyWithImpl<$Res, ClaimModel>;
  @useResult
  $Res call({String? nama, String? date});
}

/// @nodoc
class _$ClaimModelCopyWithImpl<$Res, $Val extends ClaimModel>
    implements $ClaimModelCopyWith<$Res> {
  _$ClaimModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = freezed,
    Object? date = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClaimModelImplCopyWith<$Res>
    implements $ClaimModelCopyWith<$Res> {
  factory _$$ClaimModelImplCopyWith(
          _$ClaimModelImpl value, $Res Function(_$ClaimModelImpl) then) =
      __$$ClaimModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nama, String? date});
}

/// @nodoc
class __$$ClaimModelImplCopyWithImpl<$Res>
    extends _$ClaimModelCopyWithImpl<$Res, _$ClaimModelImpl>
    implements _$$ClaimModelImplCopyWith<$Res> {
  __$$ClaimModelImplCopyWithImpl(
      _$ClaimModelImpl _value, $Res Function(_$ClaimModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = freezed,
    Object? date = freezed,
  }) {
    return _then(_$ClaimModelImpl(
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimModelImpl implements _ClaimModel {
  const _$ClaimModelImpl({this.nama, this.date});

  factory _$ClaimModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimModelImplFromJson(json);

  @override
  final String? nama;
  @override
  final String? date;

  @override
  String toString() {
    return 'ClaimModel(nama: $nama, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimModelImpl &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nama, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimModelImplCopyWith<_$ClaimModelImpl> get copyWith =>
      __$$ClaimModelImplCopyWithImpl<_$ClaimModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimModelImplToJson(
      this,
    );
  }
}

abstract class _ClaimModel implements ClaimModel {
  const factory _ClaimModel({final String? nama, final String? date}) =
      _$ClaimModelImpl;

  factory _ClaimModel.fromJson(Map<String, dynamic> json) =
      _$ClaimModelImpl.fromJson;

  @override
  String? get nama;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$ClaimModelImplCopyWith<_$ClaimModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InventoryModel _$InventoryModelFromJson(Map<String, dynamic> json) {
  return _InventoryModel.fromJson(json);
}

/// @nodoc
mixin _$InventoryModel {
  String? get name_produk => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  String? get account_id => throw _privateConstructorUsedError;
  int? get total_kuota => throw _privateConstructorUsedError;
  int? get sisa => throw _privateConstructorUsedError;
  String? get string_kuota => throw _privateConstructorUsedError;
  ClaimModel? get claim => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryModelCopyWith<InventoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryModelCopyWith<$Res> {
  factory $InventoryModelCopyWith(
          InventoryModel value, $Res Function(InventoryModel) then) =
      _$InventoryModelCopyWithImpl<$Res, InventoryModel>;
  @useResult
  $Res call(
      {String? name_produk,
      String? link,
      String? image,
      String? date,
      int? type,
      String? account_id,
      int? total_kuota,
      int? sisa,
      String? string_kuota,
      ClaimModel? claim});

  $ClaimModelCopyWith<$Res>? get claim;
}

/// @nodoc
class _$InventoryModelCopyWithImpl<$Res, $Val extends InventoryModel>
    implements $InventoryModelCopyWith<$Res> {
  _$InventoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name_produk = freezed,
    Object? link = freezed,
    Object? image = freezed,
    Object? date = freezed,
    Object? type = freezed,
    Object? account_id = freezed,
    Object? total_kuota = freezed,
    Object? sisa = freezed,
    Object? string_kuota = freezed,
    Object? claim = freezed,
  }) {
    return _then(_value.copyWith(
      name_produk: freezed == name_produk
          ? _value.name_produk
          : name_produk // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      account_id: freezed == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      claim: freezed == claim
          ? _value.claim
          : claim // ignore: cast_nullable_to_non_nullable
              as ClaimModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClaimModelCopyWith<$Res>? get claim {
    if (_value.claim == null) {
      return null;
    }

    return $ClaimModelCopyWith<$Res>(_value.claim!, (value) {
      return _then(_value.copyWith(claim: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InventoryModelImplCopyWith<$Res>
    implements $InventoryModelCopyWith<$Res> {
  factory _$$InventoryModelImplCopyWith(_$InventoryModelImpl value,
          $Res Function(_$InventoryModelImpl) then) =
      __$$InventoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name_produk,
      String? link,
      String? image,
      String? date,
      int? type,
      String? account_id,
      int? total_kuota,
      int? sisa,
      String? string_kuota,
      ClaimModel? claim});

  @override
  $ClaimModelCopyWith<$Res>? get claim;
}

/// @nodoc
class __$$InventoryModelImplCopyWithImpl<$Res>
    extends _$InventoryModelCopyWithImpl<$Res, _$InventoryModelImpl>
    implements _$$InventoryModelImplCopyWith<$Res> {
  __$$InventoryModelImplCopyWithImpl(
      _$InventoryModelImpl _value, $Res Function(_$InventoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name_produk = freezed,
    Object? link = freezed,
    Object? image = freezed,
    Object? date = freezed,
    Object? type = freezed,
    Object? account_id = freezed,
    Object? total_kuota = freezed,
    Object? sisa = freezed,
    Object? string_kuota = freezed,
    Object? claim = freezed,
  }) {
    return _then(_$InventoryModelImpl(
      name_produk: freezed == name_produk
          ? _value.name_produk
          : name_produk // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      account_id: freezed == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      claim: freezed == claim
          ? _value.claim
          : claim // ignore: cast_nullable_to_non_nullable
              as ClaimModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryModelImpl implements _InventoryModel {
  const _$InventoryModelImpl(
      {this.name_produk,
      this.link,
      this.image,
      this.date,
      this.type,
      this.account_id,
      this.total_kuota,
      this.sisa,
      this.string_kuota,
      this.claim});

  factory _$InventoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryModelImplFromJson(json);

  @override
  final String? name_produk;
  @override
  final String? link;
  @override
  final String? image;
  @override
  final String? date;
  @override
  final int? type;
  @override
  final String? account_id;
  @override
  final int? total_kuota;
  @override
  final int? sisa;
  @override
  final String? string_kuota;
  @override
  final ClaimModel? claim;

  @override
  String toString() {
    return 'InventoryModel(name_produk: $name_produk, link: $link, image: $image, date: $date, type: $type, account_id: $account_id, total_kuota: $total_kuota, sisa: $sisa, string_kuota: $string_kuota, claim: $claim)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryModelImpl &&
            (identical(other.name_produk, name_produk) ||
                other.name_produk == name_produk) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.account_id, account_id) ||
                other.account_id == account_id) &&
            (identical(other.total_kuota, total_kuota) ||
                other.total_kuota == total_kuota) &&
            (identical(other.sisa, sisa) || other.sisa == sisa) &&
            (identical(other.string_kuota, string_kuota) ||
                other.string_kuota == string_kuota) &&
            (identical(other.claim, claim) || other.claim == claim));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name_produk, link, image, date,
      type, account_id, total_kuota, sisa, string_kuota, claim);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryModelImplCopyWith<_$InventoryModelImpl> get copyWith =>
      __$$InventoryModelImplCopyWithImpl<_$InventoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryModelImplToJson(
      this,
    );
  }
}

abstract class _InventoryModel implements InventoryModel {
  const factory _InventoryModel(
      {final String? name_produk,
      final String? link,
      final String? image,
      final String? date,
      final int? type,
      final String? account_id,
      final int? total_kuota,
      final int? sisa,
      final String? string_kuota,
      final ClaimModel? claim}) = _$InventoryModelImpl;

  factory _InventoryModel.fromJson(Map<String, dynamic> json) =
      _$InventoryModelImpl.fromJson;

  @override
  String? get name_produk;
  @override
  String? get link;
  @override
  String? get image;
  @override
  String? get date;
  @override
  int? get type;
  @override
  String? get account_id;
  @override
  int? get total_kuota;
  @override
  int? get sisa;
  @override
  String? get string_kuota;
  @override
  ClaimModel? get claim;
  @override
  @JsonKey(ignore: true)
  _$$InventoryModelImplCopyWith<_$InventoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InventoryListModel _$InventoryListModelFromJson(Map<String, dynamic> json) {
  return _InventoryListModel.fromJson(json);
}

/// @nodoc
mixin _$InventoryListModel {
  bool? get status => throw _privateConstructorUsedError;
  List<InventoryModel>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryListModelCopyWith<InventoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryListModelCopyWith<$Res> {
  factory $InventoryListModelCopyWith(
          InventoryListModel value, $Res Function(InventoryListModel) then) =
      _$InventoryListModelCopyWithImpl<$Res, InventoryListModel>;
  @useResult
  $Res call({bool? status, List<InventoryModel>? data, String? message});
}

/// @nodoc
class _$InventoryListModelCopyWithImpl<$Res, $Val extends InventoryListModel>
    implements $InventoryListModelCopyWith<$Res> {
  _$InventoryListModelCopyWithImpl(this._value, this._then);

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
              as List<InventoryModel>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryListModelImplCopyWith<$Res>
    implements $InventoryListModelCopyWith<$Res> {
  factory _$$InventoryListModelImplCopyWith(_$InventoryListModelImpl value,
          $Res Function(_$InventoryListModelImpl) then) =
      __$$InventoryListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, List<InventoryModel>? data, String? message});
}

/// @nodoc
class __$$InventoryListModelImplCopyWithImpl<$Res>
    extends _$InventoryListModelCopyWithImpl<$Res, _$InventoryListModelImpl>
    implements _$$InventoryListModelImplCopyWith<$Res> {
  __$$InventoryListModelImplCopyWithImpl(_$InventoryListModelImpl _value,
      $Res Function(_$InventoryListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$InventoryListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<InventoryModel>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryListModelImpl implements _InventoryListModel {
  const _$InventoryListModelImpl(
      {this.status, final List<InventoryModel>? data, this.message})
      : _data = data;

  factory _$InventoryListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryListModelImplFromJson(json);

  @override
  final bool? status;
  final List<InventoryModel>? _data;
  @override
  List<InventoryModel>? get data {
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
    return 'InventoryListModel(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryListModelImpl &&
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
  _$$InventoryListModelImplCopyWith<_$InventoryListModelImpl> get copyWith =>
      __$$InventoryListModelImplCopyWithImpl<_$InventoryListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryListModelImplToJson(
      this,
    );
  }
}

abstract class _InventoryListModel implements InventoryListModel {
  const factory _InventoryListModel(
      {final bool? status,
      final List<InventoryModel>? data,
      final String? message}) = _$InventoryListModelImpl;

  factory _InventoryListModel.fromJson(Map<String, dynamic> json) =
      _$InventoryListModelImpl.fromJson;

  @override
  bool? get status;
  @override
  List<InventoryModel>? get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InventoryListModelImplCopyWith<_$InventoryListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
