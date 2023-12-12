import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talent_dna/data/model/auth/auth_model.dart';

class StorageService extends GetxService {
  final store = GetStorage();
  final isShowOnBoard = false.obs;
  final profile = const ProfileModel(
    id: null,
    username: null,
    active: null,
    createdOn: null,
    email: null,
    isAdmin: null,
    isAffiliate: null,
    fullName: null,
    firstName: null,
    lastName: null,
    phoneNumber: null,
    job: null,
    country: null,
    address: null,
    userType: null,
    companyName: null,
    corporate: null,
    image: null,
    lastLogin: null,
    npwpNumber: null,
  ).obs;
  final isLogin = false.obs;

  Future<StorageService> init() async {
    final onboarding = store.read('onboarding');
    if (onboarding != null) {
      isShowOnBoard.value = onboarding;
    }

    final profileStore = store.read('userData');
    if (profileStore != null) {
      profile.value = ProfileModel.fromJson(profileStore);
    }

    final loginStore = store.read('isLogin');
    if (loginStore != null) {
      isLogin.value = loginStore;
    }
    return this;
  }

  ProfileModel setProfile({required Map<String, dynamic> json, isSSO = false}) {
    if (isSSO == true) {
      final data = ProfileSSOResponseModel.fromJson(json);
      ProfileModel profileData = ProfileModel(
        id: data.id,
        username: data.username,
        active: data.active,
        email: data.email,
        isAdmin: false,
        isAffiliate: false,
        fullName: "${data.first_name} ${data.last_name}",
        firstName: data.first_name,
        lastName: data.last_name,
        phoneNumber: data.phone,
        job: data.f_job_id,
        country: data.f_country_id,
        address: data.f_address,
        userType: data.f_flag_corporate == null || data.f_flag_corporate == 0
            ? 'Personal'
            : 'Organizational',
        companyName: data.company,
        corporate: data.corporate,
        image: data.image,
        npwpNumber: data.npwp,
      );

      profile.value = profileData;
      store.write('userData', profileData.toJson());
    } else {
      final data = ProfileResponseModel.fromJson(json);
      ProfileModel profileData = ProfileModel(
        id: data.id,
        username: data.username,
        active: data.active,
        email: data.email,
        isAdmin: data.is_admin,
        isAffiliate: data.is_affiliate,
        fullName: "${data.first_name} ${data.last_name}",
        firstName: data.first_name,
        lastName: data.last_name,
        phoneNumber: data.phone,
        job: data.job,
        country: data.country,
        address: data.address,
        userType: data.corporate == null || data.corporate == 0
            ? 'Personal'
            : 'Organizational',
        companyName: data.company,
        corporate: data.corporate,
        image: data.image == null || data.image == 'null' ? null : data.image,
        npwpNumber: data.npwp,
      );

      profile.value = profileData;
      store.write('userData', profileData.toJson());
    }

    return profile.value;
  }

  void logout() {
    profile.value = const ProfileModel(
      id: null,
      username: null,
      active: null,
      createdOn: null,
      email: null,
      isAdmin: null,
      isAffiliate: null,
      fullName: null,
      firstName: null,
      lastName: null,
      phoneNumber: null,
      job: null,
      country: null,
      address: null,
      userType: null,
      companyName: null,
      corporate: null,
      image: null,
      lastLogin: null,
      npwpNumber: null,
    );
    isLogin.value = false;
  }
}
