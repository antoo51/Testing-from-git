// ignore_for_file: non_constant_identifier_names

abstract class Inventory {
  String? get name_produk;
  String? get link;
  String? get image;
  String? get date;
  int? get type;
  String? get account_id;
  int? get total_kuota;
  int? get sisa;
  String? get string_kuota;
  Claim? get claim;
}

abstract class Claim {
  String? nama;
  String? date;
}
