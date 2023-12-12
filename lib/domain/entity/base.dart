abstract class ApiResponseBase {
  bool? get status;
  String? get msg;
  dynamic get data;
}

abstract class ApiResponseBaseAuth {
  bool? get status;
  String? get message;
  dynamic get data;
}

abstract class ApiResponseBaseNewAuth {
  int? get status;
  String? get msg;
  dynamic get data;
}
