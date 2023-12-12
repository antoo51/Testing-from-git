// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return _AuthModel.fromJson(json);
}

/// @nodoc
mixin _$AuthModel {
  String get userId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res, AuthModel>;
  @useResult
  $Res call({String userId, String token});
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res, $Val extends AuthModel>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthModelImplCopyWith<$Res>
    implements $AuthModelCopyWith<$Res> {
  factory _$$AuthModelImplCopyWith(
          _$AuthModelImpl value, $Res Function(_$AuthModelImpl) then) =
      __$$AuthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String token});
}

/// @nodoc
class __$$AuthModelImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelImpl>
    implements _$$AuthModelImplCopyWith<$Res> {
  __$$AuthModelImplCopyWithImpl(
      _$AuthModelImpl _value, $Res Function(_$AuthModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? token = null,
  }) {
    return _then(_$AuthModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthModelImpl implements _AuthModel {
  const _$AuthModelImpl({required this.userId, required this.token});

  factory _$AuthModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthModel(userId: $userId, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthModelImplCopyWith<_$AuthModelImpl> get copyWith =>
      __$$AuthModelImplCopyWithImpl<_$AuthModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthModelImplToJson(
      this,
    );
  }
}

abstract class _AuthModel implements AuthModel {
  const factory _AuthModel(
      {required final String userId,
      required final String token}) = _$AuthModelImpl;

  factory _AuthModel.fromJson(Map<String, dynamic> json) =
      _$AuthModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$AuthModelImplCopyWith<_$AuthModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  dynamic get createdOn => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get job => throw _privateConstructorUsedError;
  int? get country => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get userType => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  dynamic get corporate => throw _privateConstructorUsedError;
  String? get npwpNumber => throw _privateConstructorUsedError;
  String? get lastLogin => throw _privateConstructorUsedError;
  bool? get isAffiliate => throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;
  String? get npwp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? image,
      String? email,
      dynamic createdOn,
      int? active,
      String? fullName,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      int? job,
      int? country,
      String? address,
      String? userType,
      String? companyName,
      dynamic corporate,
      String? npwpNumber,
      String? lastLogin,
      bool? isAffiliate,
      bool? isAdmin,
      String? npwp});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? email = freezed,
    Object? createdOn = freezed,
    Object? active = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? job = freezed,
    Object? country = freezed,
    Object? address = freezed,
    Object? userType = freezed,
    Object? companyName = freezed,
    Object? corporate = freezed,
    Object? npwpNumber = freezed,
    Object? lastLogin = freezed,
    Object? isAffiliate = freezed,
    Object? isAdmin = freezed,
    Object? npwp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      corporate: freezed == corporate
          ? _value.corporate
          : corporate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      npwpNumber: freezed == npwpNumber
          ? _value.npwpNumber
          : npwpNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      isAffiliate: freezed == isAffiliate
          ? _value.isAffiliate
          : isAffiliate // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      npwp: freezed == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? image,
      String? email,
      dynamic createdOn,
      int? active,
      String? fullName,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      int? job,
      int? country,
      String? address,
      String? userType,
      String? companyName,
      dynamic corporate,
      String? npwpNumber,
      String? lastLogin,
      bool? isAffiliate,
      bool? isAdmin,
      String? npwp});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? image = freezed,
    Object? email = freezed,
    Object? createdOn = freezed,
    Object? active = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? job = freezed,
    Object? country = freezed,
    Object? address = freezed,
    Object? userType = freezed,
    Object? companyName = freezed,
    Object? corporate = freezed,
    Object? npwpNumber = freezed,
    Object? lastLogin = freezed,
    Object? isAffiliate = freezed,
    Object? isAdmin = freezed,
    Object? npwp = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      corporate: freezed == corporate
          ? _value.corporate
          : corporate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      npwpNumber: freezed == npwpNumber
          ? _value.npwpNumber
          : npwpNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      isAffiliate: freezed == isAffiliate
          ? _value.isAffiliate
          : isAffiliate // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      npwp: freezed == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {this.id,
      this.username,
      this.image,
      this.email,
      this.createdOn,
      this.active,
      this.fullName,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.job,
      this.country,
      this.address,
      this.userType,
      this.companyName,
      this.corporate,
      this.npwpNumber,
      this.lastLogin,
      this.isAffiliate,
      this.isAdmin,
      this.npwp});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? image;
  @override
  final String? email;
  @override
  final dynamic createdOn;
  @override
  final int? active;
  @override
  final String? fullName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phoneNumber;
  @override
  final int? job;
  @override
  final int? country;
  @override
  final String? address;
  @override
  final String? userType;
  @override
  final String? companyName;
  @override
  final dynamic corporate;
  @override
  final String? npwpNumber;
  @override
  final String? lastLogin;
  @override
  final bool? isAffiliate;
  @override
  final bool? isAdmin;
  @override
  final String? npwp;

  @override
  String toString() {
    return 'ProfileModel(id: $id, username: $username, image: $image, email: $email, createdOn: $createdOn, active: $active, fullName: $fullName, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, job: $job, country: $country, address: $address, userType: $userType, companyName: $companyName, corporate: $corporate, npwpNumber: $npwpNumber, lastLogin: $lastLogin, isAffiliate: $isAffiliate, isAdmin: $isAdmin, npwp: $npwp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.createdOn, createdOn) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality().equals(other.corporate, corporate) &&
            (identical(other.npwpNumber, npwpNumber) ||
                other.npwpNumber == npwpNumber) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.isAffiliate, isAffiliate) ||
                other.isAffiliate == isAffiliate) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.npwp, npwp) || other.npwp == npwp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        username,
        image,
        email,
        const DeepCollectionEquality().hash(createdOn),
        active,
        fullName,
        firstName,
        lastName,
        phoneNumber,
        job,
        country,
        address,
        userType,
        companyName,
        const DeepCollectionEquality().hash(corporate),
        npwpNumber,
        lastLogin,
        isAffiliate,
        isAdmin,
        npwp
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {final int? id,
      final String? username,
      final String? image,
      final String? email,
      final dynamic createdOn,
      final int? active,
      final String? fullName,
      final String? firstName,
      final String? lastName,
      final String? phoneNumber,
      final int? job,
      final int? country,
      final String? address,
      final String? userType,
      final String? companyName,
      final dynamic corporate,
      final String? npwpNumber,
      final String? lastLogin,
      final bool? isAffiliate,
      final bool? isAdmin,
      final String? npwp}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get image;
  @override
  String? get email;
  @override
  dynamic get createdOn;
  @override
  int? get active;
  @override
  String? get fullName;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get phoneNumber;
  @override
  int? get job;
  @override
  int? get country;
  @override
  String? get address;
  @override
  String? get userType;
  @override
  String? get companyName;
  @override
  dynamic get corporate;
  @override
  String? get npwpNumber;
  @override
  String? get lastLogin;
  @override
  bool? get isAffiliate;
  @override
  bool? get isAdmin;
  @override
  String? get npwp;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileResponseModel _$ProfileResponseModelFromJson(Map<String, dynamic> json) {
  return _ProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  dynamic get created_on => throw _privateConstructorUsedError;
  String? get last_login => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  int? get country => throw _privateConstructorUsedError;
  int? get job => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  dynamic get corporate => throw _privateConstructorUsedError;
  bool? get is_affiliate => throw _privateConstructorUsedError;
  bool? get is_admin => throw _privateConstructorUsedError;
  String? get npwp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseModelCopyWith<ProfileResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseModelCopyWith<$Res> {
  factory $ProfileResponseModelCopyWith(ProfileResponseModel value,
          $Res Function(ProfileResponseModel) then) =
      _$ProfileResponseModelCopyWithImpl<$Res, ProfileResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? email,
      dynamic created_on,
      String? last_login,
      int? active,
      String? first_name,
      String? last_name,
      int? country,
      int? job,
      String? company,
      String? phone,
      String? image,
      String? address,
      dynamic corporate,
      bool? is_affiliate,
      bool? is_admin,
      String? npwp});
}

/// @nodoc
class _$ProfileResponseModelCopyWithImpl<$Res,
        $Val extends ProfileResponseModel>
    implements $ProfileResponseModelCopyWith<$Res> {
  _$ProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? created_on = freezed,
    Object? last_login = freezed,
    Object? active = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? country = freezed,
    Object? job = freezed,
    Object? company = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? address = freezed,
    Object? corporate = freezed,
    Object? is_affiliate = freezed,
    Object? is_admin = freezed,
    Object? npwp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      created_on: freezed == created_on
          ? _value.created_on
          : created_on // ignore: cast_nullable_to_non_nullable
              as dynamic,
      last_login: freezed == last_login
          ? _value.last_login
          : last_login // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as int?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as int?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      corporate: freezed == corporate
          ? _value.corporate
          : corporate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      is_affiliate: freezed == is_affiliate
          ? _value.is_affiliate
          : is_affiliate // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_admin: freezed == is_admin
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool?,
      npwp: freezed == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileResponseModelImplCopyWith<$Res>
    implements $ProfileResponseModelCopyWith<$Res> {
  factory _$$ProfileResponseModelImplCopyWith(_$ProfileResponseModelImpl value,
          $Res Function(_$ProfileResponseModelImpl) then) =
      __$$ProfileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? email,
      dynamic created_on,
      String? last_login,
      int? active,
      String? first_name,
      String? last_name,
      int? country,
      int? job,
      String? company,
      String? phone,
      String? image,
      String? address,
      dynamic corporate,
      bool? is_affiliate,
      bool? is_admin,
      String? npwp});
}

/// @nodoc
class __$$ProfileResponseModelImplCopyWithImpl<$Res>
    extends _$ProfileResponseModelCopyWithImpl<$Res, _$ProfileResponseModelImpl>
    implements _$$ProfileResponseModelImplCopyWith<$Res> {
  __$$ProfileResponseModelImplCopyWithImpl(_$ProfileResponseModelImpl _value,
      $Res Function(_$ProfileResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? created_on = freezed,
    Object? last_login = freezed,
    Object? active = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? country = freezed,
    Object? job = freezed,
    Object? company = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? address = freezed,
    Object? corporate = freezed,
    Object? is_affiliate = freezed,
    Object? is_admin = freezed,
    Object? npwp = freezed,
  }) {
    return _then(_$ProfileResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      created_on: freezed == created_on
          ? _value.created_on
          : created_on // ignore: cast_nullable_to_non_nullable
              as dynamic,
      last_login: freezed == last_login
          ? _value.last_login
          : last_login // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as int?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as int?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      corporate: freezed == corporate
          ? _value.corporate
          : corporate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      is_affiliate: freezed == is_affiliate
          ? _value.is_affiliate
          : is_affiliate // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_admin: freezed == is_admin
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool?,
      npwp: freezed == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileResponseModelImpl implements _ProfileResponseModel {
  const _$ProfileResponseModelImpl(
      {this.id,
      this.username,
      this.email,
      this.created_on,
      this.last_login,
      this.active,
      this.first_name,
      this.last_name,
      this.country,
      this.job,
      this.company,
      this.phone,
      this.image,
      this.address,
      this.corporate,
      this.is_affiliate,
      this.is_admin,
      this.npwp});

  factory _$ProfileResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final dynamic created_on;
  @override
  final String? last_login;
  @override
  final int? active;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final int? country;
  @override
  final int? job;
  @override
  final String? company;
  @override
  final String? phone;
  @override
  final String? image;
  @override
  final String? address;
  @override
  final dynamic corporate;
  @override
  final bool? is_affiliate;
  @override
  final bool? is_admin;
  @override
  final String? npwp;

  @override
  String toString() {
    return 'ProfileResponseModel(id: $id, username: $username, email: $email, created_on: $created_on, last_login: $last_login, active: $active, first_name: $first_name, last_name: $last_name, country: $country, job: $job, company: $company, phone: $phone, image: $image, address: $address, corporate: $corporate, is_affiliate: $is_affiliate, is_admin: $is_admin, npwp: $npwp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other.created_on, created_on) &&
            (identical(other.last_login, last_login) ||
                other.last_login == last_login) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other.corporate, corporate) &&
            (identical(other.is_affiliate, is_affiliate) ||
                other.is_affiliate == is_affiliate) &&
            (identical(other.is_admin, is_admin) ||
                other.is_admin == is_admin) &&
            (identical(other.npwp, npwp) || other.npwp == npwp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      const DeepCollectionEquality().hash(created_on),
      last_login,
      active,
      first_name,
      last_name,
      country,
      job,
      company,
      phone,
      image,
      address,
      const DeepCollectionEquality().hash(corporate),
      is_affiliate,
      is_admin,
      npwp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResponseModelImplCopyWith<_$ProfileResponseModelImpl>
      get copyWith =>
          __$$ProfileResponseModelImplCopyWithImpl<_$ProfileResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileResponseModel implements ProfileResponseModel {
  const factory _ProfileResponseModel(
      {final int? id,
      final String? username,
      final String? email,
      final dynamic created_on,
      final String? last_login,
      final int? active,
      final String? first_name,
      final String? last_name,
      final int? country,
      final int? job,
      final String? company,
      final String? phone,
      final String? image,
      final String? address,
      final dynamic corporate,
      final bool? is_affiliate,
      final bool? is_admin,
      final String? npwp}) = _$ProfileResponseModelImpl;

  factory _ProfileResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProfileResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get email;
  @override
  dynamic get created_on;
  @override
  String? get last_login;
  @override
  int? get active;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  int? get country;
  @override
  int? get job;
  @override
  String? get company;
  @override
  String? get phone;
  @override
  String? get image;
  @override
  String? get address;
  @override
  dynamic get corporate;
  @override
  bool? get is_affiliate;
  @override
  bool? get is_admin;
  @override
  String? get npwp;
  @override
  @JsonKey(ignore: true)
  _$$ProfileResponseModelImplCopyWith<_$ProfileResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileSSOResponseModel _$ProfileSSOResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileSSOResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileSSOResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  int? get f_country_id => throw _privateConstructorUsedError;
  int? get f_job_id => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get f_address => throw _privateConstructorUsedError;
  int? get corporate => throw _privateConstructorUsedError;
  int? get f_flag_corporate => throw _privateConstructorUsedError;
  String? get npwp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileSSOResponseModelCopyWith<ProfileSSOResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSSOResponseModelCopyWith<$Res> {
  factory $ProfileSSOResponseModelCopyWith(ProfileSSOResponseModel value,
          $Res Function(ProfileSSOResponseModel) then) =
      _$ProfileSSOResponseModelCopyWithImpl<$Res, ProfileSSOResponseModel>;
  @useResult
  $Res call(
      {int id,
      String username,
      String email,
      int active,
      String first_name,
      String last_name,
      int? f_country_id,
      int? f_job_id,
      String? company,
      String? phone,
      String? image,
      String? f_address,
      int? corporate,
      int? f_flag_corporate,
      String? npwp});
}

/// @nodoc
class _$ProfileSSOResponseModelCopyWithImpl<$Res,
        $Val extends ProfileSSOResponseModel>
    implements $ProfileSSOResponseModelCopyWith<$Res> {
  _$ProfileSSOResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? active = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? f_country_id = freezed,
    Object? f_job_id = freezed,
    Object? company = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? f_address = freezed,
    Object? corporate = freezed,
    Object? f_flag_corporate = freezed,
    Object? npwp = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      f_country_id: freezed == f_country_id
          ? _value.f_country_id
          : f_country_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_job_id: freezed == f_job_id
          ? _value.f_job_id
          : f_job_id // ignore: cast_nullable_to_non_nullable
              as int?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      f_address: freezed == f_address
          ? _value.f_address
          : f_address // ignore: cast_nullable_to_non_nullable
              as String?,
      corporate: freezed == corporate
          ? _value.corporate
          : corporate // ignore: cast_nullable_to_non_nullable
              as int?,
      f_flag_corporate: freezed == f_flag_corporate
          ? _value.f_flag_corporate
          : f_flag_corporate // ignore: cast_nullable_to_non_nullable
              as int?,
      npwp: freezed == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileSSOResponseModelImplCopyWith<$Res>
    implements $ProfileSSOResponseModelCopyWith<$Res> {
  factory _$$ProfileSSOResponseModelImplCopyWith(
          _$ProfileSSOResponseModelImpl value,
          $Res Function(_$ProfileSSOResponseModelImpl) then) =
      __$$ProfileSSOResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String email,
      int active,
      String first_name,
      String last_name,
      int? f_country_id,
      int? f_job_id,
      String? company,
      String? phone,
      String? image,
      String? f_address,
      int? corporate,
      int? f_flag_corporate,
      String? npwp});
}

/// @nodoc
class __$$ProfileSSOResponseModelImplCopyWithImpl<$Res>
    extends _$ProfileSSOResponseModelCopyWithImpl<$Res,
        _$ProfileSSOResponseModelImpl>
    implements _$$ProfileSSOResponseModelImplCopyWith<$Res> {
  __$$ProfileSSOResponseModelImplCopyWithImpl(
      _$ProfileSSOResponseModelImpl _value,
      $Res Function(_$ProfileSSOResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? active = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? f_country_id = freezed,
    Object? f_job_id = freezed,
    Object? company = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? f_address = freezed,
    Object? corporate = freezed,
    Object? f_flag_corporate = freezed,
    Object? npwp = freezed,
  }) {
    return _then(_$ProfileSSOResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      f_country_id: freezed == f_country_id
          ? _value.f_country_id
          : f_country_id // ignore: cast_nullable_to_non_nullable
              as int?,
      f_job_id: freezed == f_job_id
          ? _value.f_job_id
          : f_job_id // ignore: cast_nullable_to_non_nullable
              as int?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      f_address: freezed == f_address
          ? _value.f_address
          : f_address // ignore: cast_nullable_to_non_nullable
              as String?,
      corporate: freezed == corporate
          ? _value.corporate
          : corporate // ignore: cast_nullable_to_non_nullable
              as int?,
      f_flag_corporate: freezed == f_flag_corporate
          ? _value.f_flag_corporate
          : f_flag_corporate // ignore: cast_nullable_to_non_nullable
              as int?,
      npwp: freezed == npwp
          ? _value.npwp
          : npwp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileSSOResponseModelImpl implements _ProfileSSOResponseModel {
  const _$ProfileSSOResponseModelImpl(
      {required this.id,
      required this.username,
      required this.email,
      required this.active,
      required this.first_name,
      required this.last_name,
      this.f_country_id,
      this.f_job_id,
      this.company,
      this.phone,
      this.image,
      this.f_address,
      this.corporate,
      this.f_flag_corporate,
      this.npwp});

  factory _$ProfileSSOResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileSSOResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String email;
  @override
  final int active;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final int? f_country_id;
  @override
  final int? f_job_id;
  @override
  final String? company;
  @override
  final String? phone;
  @override
  final String? image;
  @override
  final String? f_address;
  @override
  final int? corporate;
  @override
  final int? f_flag_corporate;
  @override
  final String? npwp;

  @override
  String toString() {
    return 'ProfileSSOResponseModel(id: $id, username: $username, email: $email, active: $active, first_name: $first_name, last_name: $last_name, f_country_id: $f_country_id, f_job_id: $f_job_id, company: $company, phone: $phone, image: $image, f_address: $f_address, corporate: $corporate, f_flag_corporate: $f_flag_corporate, npwp: $npwp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSSOResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.f_country_id, f_country_id) ||
                other.f_country_id == f_country_id) &&
            (identical(other.f_job_id, f_job_id) ||
                other.f_job_id == f_job_id) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.f_address, f_address) ||
                other.f_address == f_address) &&
            (identical(other.corporate, corporate) ||
                other.corporate == corporate) &&
            (identical(other.f_flag_corporate, f_flag_corporate) ||
                other.f_flag_corporate == f_flag_corporate) &&
            (identical(other.npwp, npwp) || other.npwp == npwp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      active,
      first_name,
      last_name,
      f_country_id,
      f_job_id,
      company,
      phone,
      image,
      f_address,
      corporate,
      f_flag_corporate,
      npwp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSSOResponseModelImplCopyWith<_$ProfileSSOResponseModelImpl>
      get copyWith => __$$ProfileSSOResponseModelImplCopyWithImpl<
          _$ProfileSSOResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileSSOResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileSSOResponseModel implements ProfileSSOResponseModel {
  const factory _ProfileSSOResponseModel(
      {required final int id,
      required final String username,
      required final String email,
      required final int active,
      required final String first_name,
      required final String last_name,
      final int? f_country_id,
      final int? f_job_id,
      final String? company,
      final String? phone,
      final String? image,
      final String? f_address,
      final int? corporate,
      final int? f_flag_corporate,
      final String? npwp}) = _$ProfileSSOResponseModelImpl;

  factory _ProfileSSOResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProfileSSOResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get email;
  @override
  int get active;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  int? get f_country_id;
  @override
  int? get f_job_id;
  @override
  String? get company;
  @override
  String? get phone;
  @override
  String? get image;
  @override
  String? get f_address;
  @override
  int? get corporate;
  @override
  int? get f_flag_corporate;
  @override
  String? get npwp;
  @override
  @JsonKey(ignore: true)
  _$$ProfileSSOResponseModelImplCopyWith<_$ProfileSSOResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateProfileResponseModel _$UpdateProfileResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get tgl_lahir => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get f_npwp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileResponseModelCopyWith<UpdateProfileResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileResponseModelCopyWith<$Res> {
  factory $UpdateProfileResponseModelCopyWith(UpdateProfileResponseModel value,
          $Res Function(UpdateProfileResponseModel) then) =
      _$UpdateProfileResponseModelCopyWithImpl<$Res,
          UpdateProfileResponseModel>;
  @useResult
  $Res call(
      {int id,
      String username,
      String email,
      String tgl_lahir,
      int active,
      String first_name,
      String last_name,
      String? image,
      String? company,
      String phone,
      String? f_npwp});
}

/// @nodoc
class _$UpdateProfileResponseModelCopyWithImpl<$Res,
        $Val extends UpdateProfileResponseModel>
    implements $UpdateProfileResponseModelCopyWith<$Res> {
  _$UpdateProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? tgl_lahir = null,
    Object? active = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? image = freezed,
    Object? company = freezed,
    Object? phone = null,
    Object? f_npwp = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      tgl_lahir: null == tgl_lahir
          ? _value.tgl_lahir
          : tgl_lahir // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      f_npwp: freezed == f_npwp
          ? _value.f_npwp
          : f_npwp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileResponseModelImplCopyWith<$Res>
    implements $UpdateProfileResponseModelCopyWith<$Res> {
  factory _$$UpdateProfileResponseModelImplCopyWith(
          _$UpdateProfileResponseModelImpl value,
          $Res Function(_$UpdateProfileResponseModelImpl) then) =
      __$$UpdateProfileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String email,
      String tgl_lahir,
      int active,
      String first_name,
      String last_name,
      String? image,
      String? company,
      String phone,
      String? f_npwp});
}

/// @nodoc
class __$$UpdateProfileResponseModelImplCopyWithImpl<$Res>
    extends _$UpdateProfileResponseModelCopyWithImpl<$Res,
        _$UpdateProfileResponseModelImpl>
    implements _$$UpdateProfileResponseModelImplCopyWith<$Res> {
  __$$UpdateProfileResponseModelImplCopyWithImpl(
      _$UpdateProfileResponseModelImpl _value,
      $Res Function(_$UpdateProfileResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? tgl_lahir = null,
    Object? active = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? image = freezed,
    Object? company = freezed,
    Object? phone = null,
    Object? f_npwp = freezed,
  }) {
    return _then(_$UpdateProfileResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      tgl_lahir: null == tgl_lahir
          ? _value.tgl_lahir
          : tgl_lahir // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      f_npwp: freezed == f_npwp
          ? _value.f_npwp
          : f_npwp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProfileResponseModelImpl implements _UpdateProfileResponseModel {
  const _$UpdateProfileResponseModelImpl(
      {required this.id,
      required this.username,
      required this.email,
      required this.tgl_lahir,
      required this.active,
      required this.first_name,
      required this.last_name,
      this.image,
      this.company,
      required this.phone,
      this.f_npwp});

  factory _$UpdateProfileResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateProfileResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String tgl_lahir;
  @override
  final int active;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String? image;
  @override
  final String? company;
  @override
  final String phone;
  @override
  final String? f_npwp;

  @override
  String toString() {
    return 'UpdateProfileResponseModel(id: $id, username: $username, email: $email, tgl_lahir: $tgl_lahir, active: $active, first_name: $first_name, last_name: $last_name, image: $image, company: $company, phone: $phone, f_npwp: $f_npwp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.tgl_lahir, tgl_lahir) ||
                other.tgl_lahir == tgl_lahir) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.f_npwp, f_npwp) || other.f_npwp == f_npwp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, tgl_lahir,
      active, first_name, last_name, image, company, phone, f_npwp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileResponseModelImplCopyWith<_$UpdateProfileResponseModelImpl>
      get copyWith => __$$UpdateProfileResponseModelImplCopyWithImpl<
          _$UpdateProfileResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileResponseModel
    implements UpdateProfileResponseModel {
  const factory _UpdateProfileResponseModel(
      {required final int id,
      required final String username,
      required final String email,
      required final String tgl_lahir,
      required final int active,
      required final String first_name,
      required final String last_name,
      final String? image,
      final String? company,
      required final String phone,
      final String? f_npwp}) = _$UpdateProfileResponseModelImpl;

  factory _UpdateProfileResponseModel.fromJson(Map<String, dynamic> json) =
      _$UpdateProfileResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String get tgl_lahir;
  @override
  int get active;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String? get image;
  @override
  String? get company;
  @override
  String get phone;
  @override
  String? get f_npwp;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileResponseModelImplCopyWith<_$UpdateProfileResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
