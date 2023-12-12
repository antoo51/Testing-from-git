import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/auth/sign_up_controller.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';

class RegisterScreenStepTwo extends GetView<SignUpController> {
  static const String routeName = '/register-step-two';

  const RegisterScreenStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      ImgBackgroundSplashScreen.imgBackgroundSplashScreen),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 24,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // --------- Title -----------
                                Text(
                                  'Create Your Account',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 24,
                                    fontFamily: 'MontserratExtraBold',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 12),
                                // --------- Sub Title -----------
                                Text(
                                  'Select one of account type to identify your personality',
                                  style: TextStyle(
                                      color: Palette.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                // --------- Choose Button -----------
                                Container(
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(130, 20, 0, 30),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      // ------- Button Personal --------
                                      tabPersonal(),
                                      // ------- Button Organizational --------
                                      tabOrganization(),
                                    ],
                                  ),
                                ),
                                // -------- Form Register --------
                                Container(
                                  margin: const EdgeInsets.only(top: 24),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(127, 20, 0, 30),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Form(
                                    key: controller.formKeyStepTwo,
                                    child: Column(
                                      children: [
                                        // ------- First Name ----------
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'First Name *',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 16,
                                              fontFamily: 'MontserratBold',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        TextFormField(
                                          controller:
                                              controller.firstNameController,
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
                                          style: TextStyle(
                                            color: Palette.white,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'First Name',
                                            hintStyle: TextStyle(
                                                color: Palette.hintText),
                                          ),
                                        ),
                                        // ------- End First Name ----------
                                        const SizedBox(height: 16),
                                        // ------- Last Name ----------
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Last Name *',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 16,
                                              fontFamily: 'MontserratBold',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        TextFormField(
                                          controller:
                                              controller.lastNameController,
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Last Name is Required';
                                            }
                                            return null;
                                          },
                                          style: TextStyle(
                                            color: Palette.white,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'Last Name',
                                            hintStyle: TextStyle(
                                                color: Palette.hintText),
                                          ),
                                        ),
                                        // ------- End Last Name ----------
                                        const SizedBox(height: 16),
                                        Obx(
                                          () => Visibility(
                                            visible: controller
                                                .buttonOrganization.isTrue,
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    'Company Name *',
                                                    style: TextStyle(
                                                        color: Palette.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                TextFormField(
                                                  controller: controller
                                                      .companyNameController,
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Company Name is Required';
                                                    }
                                                    return null;
                                                  },
                                                  style: TextStyle(
                                                      color: Palette.white),
                                                  decoration: InputDecoration(
                                                    hintText: 'Company Name',
                                                    hintStyle: TextStyle(
                                                        color:
                                                            Palette.hintText),
                                                  ),
                                                ),
                                                const SizedBox(height: 16),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // ------- Phone Number ----------
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Phone Number *',
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
                                              child: DropdownButtonFormField<
                                                  String>(
                                                style: TextStyle(
                                                  color: Palette.white,
                                                ),
                                                autovalidateMode:
                                                    AutovalidateMode
                                                        .onUserInteraction,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Choose Code Number';
                                                  }
                                                  return null;
                                                },
                                                decoration: InputDecoration(
                                                  // hintText: '+62',
                                                  hintStyle: TextStyle(
                                                    color: Palette.hintText,
                                                  ),
                                                ),
                                                items: [
                                                  '+62',
                                                  '+60',
                                                ].map((String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                        color: Palette.white,
                                                      ),
                                                    ),
                                                  );
                                                }).toList(),
                                                onChanged: (String? newValue) {
                                                  controller.selectedCodePhone
                                                      .value = newValue ?? '';
                                                },
                                                value: controller
                                                    .selectedCodePhone.value,
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_sharp,
                                                  color: Palette.white,
                                                ),
                                                elevation: 2,
                                                dropdownColor:
                                                    Palette.purpleDark,
                                              ),
                                            ),
                                            const SizedBox(width: 15),
                                            Expanded(
                                              child: TextFormField(
                                                controller: controller
                                                    .phoneNumberController,
                                                autovalidateMode:
                                                    AutovalidateMode
                                                        .onUserInteraction,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return 'Phone Number is Required';
                                                  }
                                                  return null;
                                                },
                                                inputFormatters: [
                                                  FilteringTextInputFormatter
                                                      .allow(
                                                    RegExp(r'[0-9]'),
                                                  ),
                                                ],
                                                style: TextStyle(
                                                    color: Palette.white),
                                                decoration: InputDecoration(
                                                  hintText: 'Phone Number',
                                                  hintStyle: TextStyle(
                                                      color: Palette.hintText),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // ------- End Phone Number ----------
                                        const SizedBox(height: 16),
                                        Obx(
                                          () => Visibility(
                                            visible: controller
                                                .buttonOrganization.isTrue,
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    'NPWP Number *',
                                                    style: TextStyle(
                                                        color: Palette.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                TextFormField(
                                                  controller:
                                                      controller.npwpController,
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'NPWP Number is Required';
                                                    }
                                                    return null;
                                                  },
                                                  style: TextStyle(
                                                    color: Palette.white,
                                                  ),
                                                  decoration: InputDecoration(
                                                    hintText: 'NPWP Number',
                                                    hintStyle: TextStyle(
                                                        color:
                                                            Palette.hintText),
                                                  ),
                                                ),
                                                const SizedBox(height: 16),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // -------- Input Job Option --------
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Job *',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 16,
                                              fontFamily: 'MontserratBold',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Obx(() {
                                          var jobList = controller
                                              .jobsController.jobsList;

                                          if (jobList.isEmpty) {
                                            return TextFormField(
                                              decoration: InputDecoration(
                                                hintText: 'Loading...',
                                                hintStyle: TextStyle(
                                                  color: Palette.hintText,
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
                                            style:
                                                TextStyle(color: Palette.white),
                                            decoration: InputDecoration(
                                              hintText: 'Select Job',
                                              hintStyle: TextStyle(
                                                  color: Palette.hintText),
                                            ),
                                            items: jobList.map((job) {
                                              return DropdownMenuItem<String>(
                                                value: job.f_id.toString(),
                                                child: Text(
                                                  job.f_levelwork_desc ?? '',
                                                  style: TextStyle(
                                                    color: Palette.white,
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              controller.selectedJob.value =
                                                  newValue ?? '';
                                            },
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_sharp,
                                              color: Palette.white,
                                            ),
                                            elevation: 2,
                                            dropdownColor: Palette.purpleDark,
                                          );
                                        }),
                                        // -------- End Input Job Option --------
                                        const SizedBox(height: 16),
                                        // --------- Input Country ----------
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Country *',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 16,
                                              fontFamily: 'MontserratBold',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Obx(() {
                                          var countryList = controller
                                              .countryController.countryList;
                                          if (countryList.isEmpty) {
                                            return TextFormField(
                                              decoration: InputDecoration(
                                                hintText: 'Loading...',
                                                hintStyle: TextStyle(
                                                  color: Palette.hintText,
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
                                              hintText: 'Select Country',
                                              hintStyle: TextStyle(
                                                color: Palette.hintText,
                                              ),
                                            ),
                                            isExpanded: true,
                                            items: countryList.map((country) {
                                              return DropdownMenuItem<String>(
                                                value: country.f_country_id
                                                    .toString(),
                                                child: Text(
                                                  country.f_country_name ?? '',
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
                                              controller.selectedCountry.value =
                                                  newValue ?? '';
                                            },
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_sharp,
                                              color: Palette.white,
                                            ),
                                            elevation: 2,
                                            dropdownColor: Palette.purpleDark,
                                          );
                                        }),
                                        // ---------- End Input Country -----------
                                        const SizedBox(height: 16),
                                        // --------- Input Address ----------
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Address *',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 16,
                                              fontFamily: 'MontserratBold',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        TextFormField(
                                          controller:
                                              controller.addressController,
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Address is Required';
                                            }
                                            return null;
                                          },
                                          minLines: 2,
                                          maxLines: 5,
                                          keyboardType: TextInputType.multiline,
                                          style: TextStyle(
                                            color: Palette.white,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'Address',
                                            hintStyle: TextStyle(
                                              color: Palette.hintText,
                                            ),
                                          ),
                                        ),
                                        // ---------- End Input Address -----------
                                        const SizedBox(height: 24),
                                        // -------- BUtton Submit ---------
                                        Obx(
                                          () => InkWell(
                                            onTap: controller.doSignUp,
                                            child: Container(
                                              width: width,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 19,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(50),
                                                ),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    colors: [
                                                      controller
                                                              .isLoading.isTrue
                                                          ? Palette.greySkip
                                                          : Palette
                                                              .blueFgradient,
                                                      controller
                                                              .isLoading.isTrue
                                                          ? Palette.greySkip
                                                          : Palette
                                                              .pinkFgradient
                                                    ]),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'SUBMIT',
                                                    style: TextStyle(
                                                      color: Palette.white,
                                                      fontSize: 18,
                                                      fontFamily:
                                                          'MontserratBold',
                                                    ),
                                                  ),
                                                  if (controller
                                                      .isLoading.isTrue)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: SizedBox(
                                                        height: 12,
                                                        width: 12,
                                                        child:
                                                            CircularProgressIndicator(
                                                          strokeWidth: 2,
                                                          color: Palette.white,
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: 1,
                ),
              ),
            ],
          ),
          Positioned(
            top: 10,
            left: 20,
            child: SizedBox(
              width: 50,
              height: 50,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(RegisterScreen.routeName);
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    IconBack.iconBack,
                    width: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded tabOrganization() {
    return Expanded(
      child: InkWell(
        onTap: () {
          controller.buttonPersonal.value = false;
          controller.buttonOrganization.value = true;
        },
        child: Obx(
          () => Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(130, 20, 0, 30),
              borderRadius: controller.buttonOrganization.value
                  ? const BorderRadius.all(Radius.circular(12))
                  : const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
              border: GradientBoxBorder(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: controller.buttonOrganization.value
                        ? [Palette.blueFgradient, Palette.pinkFgradient]
                        : [Colors.transparent, Colors.transparent]),
                width: controller.buttonOrganization.value ? 2 : 0,
              ),
            ),
            child: Center(
              child: Text(
                'Organizational',
                style: TextStyle(
                  color: controller.buttonOrganization.value
                      ? Palette.white
                      : Palette.greyLight,
                  fontSize: 18,
                  fontWeight: controller.buttonOrganization.value
                      ? FontWeight.bold
                      : FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Expanded tabPersonal() {
    return Expanded(
      child: InkWell(
        onTap: () {
          controller.buttonPersonal.value = true;
          controller.buttonOrganization.value = false;
        },
        child: Obx(
          () => Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(130, 20, 0, 30),
              borderRadius: controller.buttonPersonal.value
                  ? const BorderRadius.all(Radius.circular(12))
                  : const BorderRadius.only(
                      topRight: Radius.circular(0),
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(0)),
              border: GradientBoxBorder(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: controller.buttonPersonal.value
                      ? [Palette.blueFgradient, Palette.pinkFgradient]
                      : [Colors.transparent, Colors.transparent],
                ),
                width: controller.buttonPersonal.value ? 2 : 0,
              ),
            ),
            child: Center(
              child: Text(
                'Personal',
                style: TextStyle(
                  color: controller.buttonPersonal.value
                      ? Palette.white
                      : Palette.greyLight,
                  fontSize: 18,
                  fontWeight: controller.buttonPersonal.value
                      ? FontWeight.bold
                      : FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
