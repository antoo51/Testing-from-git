import 'package:get/get.dart';
import 'package:talent_dna/presentation/controller/auth/country_controller.dart';
import 'package:talent_dna/presentation/controller/auth/job_controller.dart';
import 'package:talent_dna/presentation/controller/auth/sign_in_controller.dart';
import 'package:talent_dna/presentation/controller/auth/sign_up_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobsController());
    Get.lazyPut(() => CountryController());
    Get.lazyPut(() => SignInController());
    Get.lazyPut(() => SignUpController());
  }
}
