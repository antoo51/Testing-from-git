import 'package:get/get.dart' hide Response;
import 'package:talent_dna/data/model/auth/auth_model.dart';
import 'package:talent_dna/data/model/auth/register_model.dart';
// import 'package:talent_dna/domain/entity/auth.dart';

class AuthController extends GetxController {
  var profile = Rxn(
    const ProfileModel(
      id: 0,
      email: '',
      createdOn: 0,
      active: 0,
      isAdmin: false,
      isAffiliate: true,
      username: '',
      fullName: '',
      firstName: '',
      lastName: '',
      phoneNumber: '',
      job: 0,
      country: 0,
      address: '',
      userType: '',
      companyName: '',
      npwpNumber: '',
    ),
  );
}

class SignUpFromController extends GetxController {
  var profile = Rxn(
    const RegisterResponseModel(
      email: '',
      password: '',
      username: '',
      created_on: 0,
      f_address: '',
      f_country_id: '',
      f_job_id: '',
      f_npwp: '',
      f_via: '',
      first_name: '',
      last_name: '',
      phone: '',
      tgl_lahir: '',
    ),
  );
}
