import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/auth/auth_model.dart';
import 'package:talent_dna/data/model/notif/notif_models.dart';
import 'package:talent_dna/data/services/home_service.dart';
import 'package:talent_dna/data/services/storage_service.dart';

class NotifController extends GetxController {
  var notifList = List<NotifModel>.empty().obs;
  var notifRead = ''.obs;
  final storageService = Get.find<StorageService>();

  getNotif() async {
    final userDataBox = storageService.store.read('userData');
    final userData = ProfileModel.fromJson(userDataBox);

    try {
      Response response = await HomeService.getNotif(userId: userData.id ?? 0);
      final resNotif = NotifListModel.fromJson(response.data);
      notifList.value = resNotif.data ?? [];
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  updateNotif({required int id}) async {
    try {
      Response response = await HomeService.updateNotif(id: id);
      final resNotif = NotifListModel.fromJson(response.data);
      notifRead.value = resNotif.message ?? '';
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
