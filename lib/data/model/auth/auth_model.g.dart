// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      userId: json['userId'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
    };

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['id'] as int?,
      username: json['username'] as String?,
      image: json['image'] as String?,
      email: json['email'] as String?,
      createdOn: json['createdOn'],
      active: json['active'] as int?,
      fullName: json['fullName'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      job: json['job'] as int?,
      country: json['country'] as int?,
      address: json['address'] as String?,
      userType: json['userType'] as String?,
      companyName: json['companyName'] as String?,
      corporate: json['corporate'],
      npwpNumber: json['npwpNumber'] as String?,
      lastLogin: json['lastLogin'] as String?,
      isAffiliate: json['isAffiliate'] as bool?,
      isAdmin: json['isAdmin'] as bool?,
      npwp: json['npwp'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'image': instance.image,
      'email': instance.email,
      'createdOn': instance.createdOn,
      'active': instance.active,
      'fullName': instance.fullName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'job': instance.job,
      'country': instance.country,
      'address': instance.address,
      'userType': instance.userType,
      'companyName': instance.companyName,
      'corporate': instance.corporate,
      'npwpNumber': instance.npwpNumber,
      'lastLogin': instance.lastLogin,
      'isAffiliate': instance.isAffiliate,
      'isAdmin': instance.isAdmin,
      'npwp': instance.npwp,
    };

_$ProfileResponseModelImpl _$$ProfileResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseModelImpl(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      created_on: json['created_on'],
      last_login: json['last_login'] as String?,
      active: json['active'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      country: json['country'] as int?,
      job: json['job'] as int?,
      company: json['company'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      address: json['address'] as String?,
      corporate: json['corporate'],
      is_affiliate: json['is_affiliate'] as bool?,
      is_admin: json['is_admin'] as bool?,
      npwp: json['npwp'] as String?,
    );

Map<String, dynamic> _$$ProfileResponseModelImplToJson(
        _$ProfileResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'created_on': instance.created_on,
      'last_login': instance.last_login,
      'active': instance.active,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'country': instance.country,
      'job': instance.job,
      'company': instance.company,
      'phone': instance.phone,
      'image': instance.image,
      'address': instance.address,
      'corporate': instance.corporate,
      'is_affiliate': instance.is_affiliate,
      'is_admin': instance.is_admin,
      'npwp': instance.npwp,
    };

_$ProfileSSOResponseModelImpl _$$ProfileSSOResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileSSOResponseModelImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      active: json['active'] as int,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      f_country_id: json['f_country_id'] as int?,
      f_job_id: json['f_job_id'] as int?,
      company: json['company'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      f_address: json['f_address'] as String?,
      corporate: json['corporate'] as int?,
      f_flag_corporate: json['f_flag_corporate'] as int?,
      npwp: json['npwp'] as String?,
    );

Map<String, dynamic> _$$ProfileSSOResponseModelImplToJson(
        _$ProfileSSOResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'active': instance.active,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'f_country_id': instance.f_country_id,
      'f_job_id': instance.f_job_id,
      'company': instance.company,
      'phone': instance.phone,
      'image': instance.image,
      'f_address': instance.f_address,
      'corporate': instance.corporate,
      'f_flag_corporate': instance.f_flag_corporate,
      'npwp': instance.npwp,
    };

_$UpdateProfileResponseModelImpl _$$UpdateProfileResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProfileResponseModelImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      tgl_lahir: json['tgl_lahir'] as String,
      active: json['active'] as int,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      image: json['image'] as String?,
      company: json['company'] as String?,
      phone: json['phone'] as String,
      f_npwp: json['f_npwp'] as String?,
    );

Map<String, dynamic> _$$UpdateProfileResponseModelImplToJson(
        _$UpdateProfileResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'tgl_lahir': instance.tgl_lahir,
      'active': instance.active,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'image': instance.image,
      'company': instance.company,
      'phone': instance.phone,
      'f_npwp': instance.f_npwp,
    };
