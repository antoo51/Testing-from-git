import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/base/base_model.dart';
import 'package:talent_dna/data/model/job/job_models.dart';
import 'package:talent_dna/data/services/auth_service.dart';

class JobsController extends GetxController {
  var jobsList = List<JobsModel>.empty().obs;
  var isLoading = false.obs;

  getJobs() async {
    try {
      isLoading.value = true;
      Response response = await AuthService.getJobs();
      final jobsData = ApiResponseBaseModel.fromJson(response.data);

      if (jobsData.data is List) {
        final jobs = (jobsData.data as List).map((item) {
          return JobsModel.fromJson(item);
        }).toList();
        jobsList.value = jobs;
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    } finally {
      isLoading.value = false;
    }
  }
}
