import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/core/localization/translation_controller.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/view/auth/forget_password.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';
import 'package:talent_dna/presentation/view/profile/edit_profile.dart';
import 'package:talent_dna/presentation/view/widget/dialog.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';

  final TranslationController translationController = Get.find();
  final storageService = Get.find<StorageService>();
  final box = GetStorage();

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Palette.bgDark),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        BgBlurProfile.bgBlurProfile,
                      ),
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
                        return Obx(
                          () => Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 24,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 50),
                                if (storageService.profile.value.image == null)
                                  Image.asset(
                                    IconProfileBig.iconProfileBig,
                                    width: 160,
                                    height: 160,
                                  ),
                                if (storageService.profile.value.image != null)
                                  Container(
                                    width: 160,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          '${dotenv.env['TDNA_URL']}/assets/${storageService.profile.value.image}',
                                        ),
                                      ),
                                    ),
                                  ),
                                const SizedBox(height: 33),
                                if (storageService.isLogin.isFalse)
                                  SizedBox(
                                    width: 270,
                                    child: Text(
                                      'Please Sign Up or Sign In and Start Your Journey',
                                      style: TextStyle(
                                        color: Palette.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                if (storageService.isLogin.isTrue)
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 270,
                                        child: Text(
                                          storageService
                                              .profile.value.fullName!,
                                          style: TextStyle(
                                            color: Palette.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      SizedBox(
                                        width: 270,
                                        child: Text(
                                          storageService
                                                  .profile.value.userType ??
                                              '',
                                          style: TextStyle(
                                            color: Palette.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                const SizedBox(height: 20),
                                if (storageService.isLogin.isFalse)
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              RegisterScreen.routeName,
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 17,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(50),
                                              ),
                                              border: GradientBoxBorder(
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Palette.white,
                                                      Palette.white
                                                    ]),
                                                width: 1,
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'SIGN UP',
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
                                      const SizedBox(width: 20),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              SignInScreen.routeName,
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 17,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(50)),
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
                                                'SIGN IN',
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
                                    ],
                                  ),
                                const SizedBox(height: 40),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Menu',
                                        style: TextStyle(
                                          color: Palette.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    const SizedBox(height: 32),
                                    if (storageService.isLogin.isTrue)
                                      Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                context,
                                                EditProfileScreen.routeName,
                                              );
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  IconProfileCircle
                                                      .iconProfileCircle,
                                                  width: 20,
                                                  height: 20,
                                                ),
                                                const SizedBox(width: 18),
                                                Text(
                                                  'Edit Profile',
                                                  style: TextStyle(
                                                    color: Palette.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  color: Palette.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 32),
                                        ],
                                      ),
                                    if (storageService.isLogin.isTrue)
                                      Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                context,
                                                ForgetPasswordScreen.routeName,
                                                // ChangePasswordScreen.routeName,
                                              );
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  IconLock.iconLock,
                                                  width: 20,
                                                  height: 20,
                                                ),
                                                const SizedBox(width: 18),
                                                Text(
                                                  'Change Password',
                                                  style: TextStyle(
                                                    color: Palette.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  color: Palette.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 32),
                                        ],
                                      ),
                                    InkWell(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            FaqCircle.faqCircle,
                                            width: 20,
                                            height: 20,
                                          ),
                                          const SizedBox(width: 18),
                                          Text(
                                            'Support',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const Spacer(),
                                          Icon(
                                            Icons.keyboard_arrow_right_sharp,
                                            color: Palette.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 32),
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            showModalBottomSheet(
                                              context: context,
                                              backgroundColor:
                                                  Colors.transparent,
                                              isScrollControlled: true,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  height: 200,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 20,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Palette.bgDark,
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(30),
                                                      topRight:
                                                          Radius.circular(30),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      const SizedBox(
                                                          height: 10),
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                          height: 4,
                                                          width: 80,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Palette.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 15),
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          'Select Language',
                                                          style: TextStyle(
                                                            color:
                                                                Palette.white,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 19),
                                                      InkWell(
                                                        onTap: () {
                                                          translationController
                                                              .changeLocale(
                                                                  'id');
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'Bahasa Indonesia',
                                                              style: TextStyle(
                                                                color: Palette
                                                                    .white,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            const Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .keyboard_arrow_right_sharp,
                                                              color:
                                                                  Palette.white,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      InkWell(
                                                        onTap: () {
                                                          translationController
                                                              .changeLocale(
                                                                  'en');
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'English',
                                                              style: TextStyle(
                                                                color: Palette
                                                                    .white,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            const Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .keyboard_arrow_right_sharp,
                                                              color:
                                                                  Palette.white,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      InkWell(
                                                        onTap: () {
                                                          translationController
                                                              .changeLocale(
                                                                  'my');
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'Melayu',
                                                              style: TextStyle(
                                                                color: Palette
                                                                    .white,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            const Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .keyboard_arrow_right_sharp,
                                                              color:
                                                                  Palette.white,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                Icontranslate.iconTranslate,
                                                width: 20,
                                                height: 20,
                                              ),
                                              const SizedBox(width: 18),
                                              Text(
                                                'Change Language',
                                                style: TextStyle(
                                                  color: Palette.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const Spacer(),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color: Palette.white,
                                              ),
                                              const SizedBox(height: 32),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 32),
                                      ],
                                    ),
                                    if (storageService.isLogin.isTrue)
                                      InkWell(
                                        onTap: () {
                                          showDefaultDialog(
                                            context,
                                            title: 'Confirm Logout',
                                            description:
                                                'Are you sure you want log out?',
                                            logout: true,
                                            showButtonConfirm: true,
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              IconLogout.iconLogout,
                                              width: 20,
                                              height: 20,
                                            ),
                                            const SizedBox(width: 18),
                                            Text(
                                              'Logout',
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.keyboard_arrow_right_sharp,
                                              color: Palette.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    const SizedBox(height: 100),
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
              // ---- Button Back
              Positioned(
                top: 10,
                left: 20,
                child: SizedBox(
                  height: 50,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(MainScreen.routeName);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          IconBack.iconBack,
                          width: 16,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Profile',
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
            ],
          ),
        ),
      ),
    );
  }
}
