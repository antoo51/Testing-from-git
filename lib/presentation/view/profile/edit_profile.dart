import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/auth/country_controller.dart';
import 'package:talent_dna/presentation/controller/auth/job_controller.dart';
import 'package:talent_dna/presentation/controller/auth/update_profile_controller.dart';
import 'package:talent_dna/presentation/view/profile/profile.dart';

class EditProfileScreen extends StatefulWidget {
  static const String routeName = '/edit-profile';

  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final box = GetStorage();
  final _formKey = GlobalKey<FormState>();
  final UpdateProfileController _updateProfileController =
      Get.put(UpdateProfileController());

  JobsController jobsController = Get.find();
  CountryController countryController = Get.find();

  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _companyName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _npwpNumber = TextEditingController();
  final TextEditingController _address = TextEditingController();

  XFile? imageFile;
  Uint8List webImage = Uint8List(8);
  dynamic _jobValue;
  dynamic _countryValue;
  String selectedPhoneCode = '';
  String phoneNumberWithoutCode = '';
  List<String> codePhoneOptions = ['+62', '+60'];
  bool isProcessing = false;

  // Function to set the default value based on phone number
  void setDefaultValue(String phoneNumber) {
    for (String code in codePhoneOptions) {
      if (phoneNumber.startsWith(code)) {
        setState(() {
          selectedPhoneCode = code;
          phoneNumberWithoutCode = phoneNumber.replaceFirst(code, '');
          _phoneNumber.text = phoneNumber.replaceFirst(code, '');
        });
        return;
      }
    }
    // Set a default value if no match is found
    setState(() {
      selectedPhoneCode = codePhoneOptions[0];
      phoneNumberWithoutCode = phoneNumber;
    });
  }

  @override
  void initState() {
    super.initState();
    jobsController.getJobs();
    countryController.getCountry();

    final profile = box.read('userData');

    _firstName.text = profile != null ? profile['firstName'] ?? '' : '';
    _lastName.text = profile != null ? profile['lastName'] ?? '' : '';
    _companyName.text = profile != null ? profile['companyName'] ?? '' : '';
    _email.text = profile != null ? profile['email'] ?? '' : '';
    _phoneNumber.text = profile != null ? profile['phoneNumber'] ?? '' : '';
    _npwpNumber.text = profile != null ? profile['npwpNumber'] ?? '' : '';

    _address.text = profile != null ? profile['address'] ?? '' : '';
    if (profile != null) {
      if (profile['job'] != null) {
        _jobValue = profile['job'].toString();
      }

      if (profile['country'] != null) {
        _countryValue = profile['country'].toString();
      }
    }

    setDefaultValue(_phoneNumber.text);
  }

  Future<void> getImage() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      var bytes = await image.readAsBytes();
      setState(() {
        webImage = bytes;
        imageFile = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final user = box.read('userData');

    return Scaffold(
      body: Center(
        child: Container(
          color: Palette.bgDark,
          child: Stack(
            children: [
              CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 50),
                              Stack(
                                children: [
                                  if (imageFile == null)
                                    Column(
                                      children: [
                                        if (user == null ||
                                            user['image'] == '' ||
                                            user['image'] == null)
                                          Image.asset(
                                            IconProfileBig.iconProfileBig,
                                            width: 140,
                                          ),
                                        if (user != null &&
                                            user['image'] != '' &&
                                            user['image'] != null)
                                          Container(
                                            width: 140,
                                            height: 140,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  '${dotenv.env['TDNA_URL']}/assets/${user['image']}',
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  if (imageFile != null)
                                    Container(
                                      width: 140,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: MemoryImage(webImage)),
                                      ),
                                    ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: InkWell(
                                      onTap: getImage,
                                      child: SizedBox(
                                        width: 42,
                                        height: 42,
                                        child: Image.asset(
                                          IconCamera.iconCamera,
                                          width: 42,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 24),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Form(
                                      key: _formKey,
                                      child: Column(
                                        children: [
                                          // ------- First Name ----------
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'First Name',
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 16,
                                                fontFamily: 'MontserratBold',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          TextFormField(
                                            controller: _firstName,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'First Name is Required';
                                              } else if (!RegExp(r'^[a-zA-Z]+$')
                                                  .hasMatch(value)) {
                                                return 'First Name must contain only alphabet characters';
                                              } else if (value.length > 75) {
                                                return 'First Name should be between 1 and 75 characters';
                                              }
                                              return null;
                                            },
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.all(12.0),
                                              hintStyle: TextStyle(
                                                color: Palette.white,
                                              ),
                                              fillColor: Palette.bgDarkMore,
                                              filled: true,
                                            ),
                                            style:
                                                TextStyle(color: Palette.white),
                                          ),
                                          // ------- End First Name ----------
                                          const SizedBox(height: 24),
                                          // ------- Last Name ----------
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Last Name',
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 16,
                                                fontFamily: 'MontserratBold',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          TextFormField(
                                            controller: _lastName,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.all(12.0),
                                              hintStyle: TextStyle(
                                                  color: Palette.white),
                                              fillColor: Palette.bgDarkMore,
                                              filled: true,
                                            ),
                                            style:
                                                TextStyle(color: Palette.white),
                                          ),
                                          // ------- End Last Name ----------
                                          const SizedBox(height: 24),
                                          // ------- Company Name ----------
                                          Visibility(
                                            visible: user['userType'] ==
                                                'Organizational',
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    'Company Name',
                                                    style: TextStyle(
                                                      color: Palette.white,
                                                      fontSize: 16,
                                                      fontFamily:
                                                          'MontserratBold',
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                TextFormField(
                                                  controller: _companyName,
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    hintText: 'Company Name',
                                                    hintStyle: TextStyle(
                                                      color: Palette.hintText,
                                                    ),
                                                    fillColor:
                                                        Palette.bgDarkMore,
                                                    filled: true,
                                                  ),
                                                  style: TextStyle(
                                                      color: Palette.white),
                                                ),
                                                const SizedBox(height: 24),
                                              ],
                                            ),
                                          ),
                                          // ------- End Company Name ----------
                                          // ------- Email ----------
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Email',
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 16,
                                                fontFamily: 'MontserratBold',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          TextFormField(
                                            controller: _email,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.all(12.0),
                                              hintStyle: TextStyle(
                                                  color: Palette.white),
                                              fillColor: Palette.bgDarkMore,
                                              filled: true,
                                            ),
                                            style: TextStyle(
                                              color: Palette.white,
                                            ),
                                          ),
                                          // ------- End Email ----------
                                          const SizedBox(height: 24),
                                          // ------- Phone Number ----------
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Phone Number',
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 16,
                                                fontFamily: 'MontserratBold',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                  width: 80,
                                                  child:
                                                      DropdownButtonFormField<
                                                          String>(
                                                    style: TextStyle(
                                                      color: Palette.white,
                                                    ),
                                                    decoration: InputDecoration(
                                                      hintStyle: TextStyle(
                                                        color: Palette.white,
                                                      ),
                                                      fillColor:
                                                          Palette.bgDarkMore,
                                                      filled: true,
                                                    ),
                                                    items: codePhoneOptions
                                                        .map((String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(
                                                          value,
                                                          style: TextStyle(
                                                            color:
                                                                Palette.white,
                                                          ),
                                                        ),
                                                      );
                                                    }).toList(),
                                                    onChanged:
                                                        (String? newValue) {
                                                      setState(() {
                                                        selectedPhoneCode =
                                                            newValue!;
                                                      });
                                                    },
                                                    value: selectedPhoneCode,
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_sharp,
                                                      color: Palette.white,
                                                    ),
                                                    elevation: 2,
                                                    dropdownColor:
                                                        Palette.purpleDark,
                                                  )),
                                              const SizedBox(width: 15),
                                              Expanded(
                                                child: TextFormField(
                                                  controller: _phoneNumber,
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                      RegExp(r'[0-9]'),
                                                    ),
                                                  ],
                                                  style: TextStyle(
                                                    color: Palette.white,
                                                  ),
                                                  decoration: InputDecoration(
                                                    hintStyle: TextStyle(
                                                      color: Palette.white,
                                                    ),
                                                    fillColor:
                                                        Palette.bgDarkMore,
                                                    filled: true,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          // ------- End Phone Number ----------
                                          const SizedBox(height: 24),
                                          // ------- NPWP ----------
                                          Visibility(
                                            visible: user['userType'] ==
                                                'Organizational',
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    'NPWP Number',
                                                    style: TextStyle(
                                                      color: Palette.white,
                                                      fontSize: 16,
                                                      fontFamily:
                                                          'MontserratBold',
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                TextFormField(
                                                  controller: _npwpNumber,
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    hintText: 'NPWP Number',
                                                    hintStyle: TextStyle(
                                                        color:
                                                            Palette.hintText),
                                                    fillColor:
                                                        Palette.bgDarkMore,
                                                    filled: true,
                                                  ),
                                                  style: TextStyle(
                                                      color: Palette.white),
                                                ),
                                                const SizedBox(height: 24),
                                              ],
                                            ),
                                          ),
                                          // ------- End NPWP ----------
                                          // -------- Input Job Option --------
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Job',
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 16,
                                                fontFamily: 'MontserratBold',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Obx(() {
                                            var jobList =
                                                jobsController.jobsList;

                                            if (jobList.isEmpty) {
                                              return TextFormField(
                                                decoration: InputDecoration(
                                                  hintText: 'Loading...',
                                                  hintStyle: TextStyle(
                                                    color: Palette.white,
                                                  ),
                                                  suffixIcon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_sharp,
                                                    color: Palette.white,
                                                  ),
                                                ),
                                              );
                                            }

                                            return DropdownButtonFormField<
                                                String>(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Choose Job';
                                                }
                                                return null;
                                              },
                                              style: TextStyle(
                                                color: Palette.white,
                                              ),
                                              decoration: InputDecoration(
                                                hintStyle: TextStyle(
                                                  color: Palette.white,
                                                ),
                                                fillColor: Palette.bgDarkMore,
                                                filled: true,
                                              ),
                                              items: jobList.map((job) {
                                                return DropdownMenuItem<String>(
                                                  value: job.f_id.toString(),
                                                  child: Text(
                                                    job.f_levelwork_desc ??
                                                        'Lainnya',
                                                    style: TextStyle(
                                                      color: Palette.white,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  _jobValue = newValue;
                                                });
                                              },
                                              value: _jobValue,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down_sharp,
                                                color: Palette.white,
                                              ),
                                              elevation: 2,
                                              dropdownColor: Palette.purpleDark,
                                            );
                                          }),

                                          // -------- End Input Job Option --------
                                          const SizedBox(height: 24),
                                          // --------- Input Country ----------
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Country',
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 16,
                                                fontFamily: 'MontserratBold',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Obx(() {
                                            var countryList =
                                                countryController.countryList;
                                            if (countryList.isEmpty) {
                                              return TextFormField(
                                                decoration: InputDecoration(
                                                  hintText: 'Loading...',
                                                  hintStyle: TextStyle(
                                                    color: Palette.white,
                                                  ),
                                                  suffixIcon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_sharp,
                                                    color: Palette.white,
                                                  ),
                                                ),
                                              );
                                            }
                                            return DropdownButtonFormField<
                                                String>(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Country is Required';
                                                }
                                                return null;
                                              },
                                              style: TextStyle(
                                                color: Palette.white,
                                              ),
                                              decoration: InputDecoration(
                                                hintStyle: TextStyle(
                                                  color: Palette.white,
                                                ),
                                                fillColor: Palette.bgDarkMore,
                                                filled: true,
                                              ),
                                              isExpanded: true,
                                              items: countryList.map((country) {
                                                return DropdownMenuItem<String>(
                                                  value: country.f_country_id
                                                      .toString(),
                                                  child: Text(
                                                    country.f_country_name ??
                                                        '',
                                                    style: TextStyle(
                                                      color: Palette.white,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  _countryValue = newValue;
                                                });
                                              },
                                              value: _countryValue,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down_sharp,
                                                color: Palette.white,
                                              ),
                                              elevation: 2,
                                              dropdownColor: Palette.purpleDark,
                                            );
                                          }),

                                          // ---------- End Input Country -----------
                                          const SizedBox(height: 24),
                                          // --------- Input Address ----------
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Address',
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 16,
                                                fontFamily: 'MontserratBold',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          TextFormField(
                                            controller: _address,
                                            minLines: 2,
                                            maxLines: 5,
                                            keyboardType:
                                                TextInputType.multiline,
                                            style: TextStyle(
                                              color: Palette.white,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: 'Address',
                                              hintStyle: TextStyle(
                                                color: Palette.white,
                                              ),
                                              fillColor: Palette.bgDarkMore,
                                              filled: true,
                                            ),
                                          ),

                                          // ---------- End Input Address -----------
                                          const SizedBox(height: 140),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      childCount: 1,
                    ),
                  ),
                ],
              ),

              // ---- Button Back Edit Profile
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 504),
                  width: width,
                  padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: Palette.bgDark,
                    boxShadow: [
                      BoxShadow(
                        color: Palette.purpleSoft,
                        spreadRadius: 3,
                        blurRadius: 60,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(ProfileScreen.routeName);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          IconBack.iconBack,
                          width: 16,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Palette.white,
                            fontFamily: 'MontserratBold',
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // ----- Button Save ------
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 504),
                  width: width,
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 25,
                    left: 30,
                    right: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Palette.bgDark,
                    boxShadow: [
                      BoxShadow(
                        color: Palette.purpleSoft,
                        spreadRadius: 3,
                        blurRadius: 60,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      _updateProfileController.doUpdateProfile(
                        user_id: user['id'].toString(),
                        webImage: imageFile,
                        first_name: _firstName.text,
                        last_name: _lastName.text,
                        company: _companyName.text,
                        phone: _phoneNumber.text.toString(),
                        npwp: _npwpNumber.text.toString(),
                        job: _jobValue.toString(),
                        country: _countryValue.toString(),
                        address: _address.text,
                        birthdate: '2000-02-13',
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Palette.blueFgradient,
                              Palette.pinkFgradient
                            ]),
                      ),
                      child: Center(
                        child: Text(
                          'SAVE',
                          style: TextStyle(
                            color: Palette.white,
                            fontSize: 18,
                            fontFamily: 'MontserratBold',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
