// ignore_for_file: non_constant_identifier_names

abstract class Auth {
  String get userId;
  String get token;
}

abstract class RegisterResponse {
  String? get first_name;
  String? get last_name;
  String? get phone;
  String? get tgl_lahir;
  String? get email;
  String? get password;
  String? get username;
  int? get created_on;
  String? get f_npwp;
  String? get f_job_id;
  String? get f_country_id;
  String? get f_address;
  String? get f_via;
}

abstract class Profile {
  int? get id;
  String? get username;
  String? get image;
  String? get email;
  dynamic get createdOn;
  int? get active;
  String? get fullName;
  String? get firstName;
  String? get lastName;
  String? get phoneNumber;
  int? get job;
  int? get country;
  String? get address;
  String? get userType;
  String? get companyName;
  dynamic get corporate;
  String? get npwpNumber;
  String? get lastLogin;
  bool? get isAffiliate;
  bool? get isAdmin;
}

abstract class ProfileResponse {
  int? get id;
  String? get username;
  String? get email;
  dynamic get created_on;
  String? get last_login;
  int? get active;
  String? get first_name;
  String? get last_name;
  int? get country;
  int? get job;
  String? get company;
  String? get phone;
  String? get image;
  String? get address;
  dynamic get corporate;
  bool? get is_affiliate;
  bool? get is_admin;
  String? get npwp;
}

abstract class UpdateProfileResponse {
  int get id;
  String get username;
  String get email;
  String get tgl_lahir;
  int get active;
  String get first_name;
  String get last_name;
  String? get image;
  String? get company;
  String get phone;
  String? get f_npwp;
}

abstract class ProfileSSOResponse {
  int get id;
  String get username;
  String get email;
  int get active;
  String get first_name;
  String get last_name;
  int? get f_country_id;
  int? get f_job_id;
  String? get company;
  String? get phone;
  String? get image;
  String? get f_address;
  int? get corporate;
  int? get f_flag_corporate;
  String? get npwp;
}

// enum UserType { personal, organizational }
