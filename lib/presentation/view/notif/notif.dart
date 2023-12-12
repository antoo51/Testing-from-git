import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/main/notif/notif_controller.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';
import 'package:talent_dna/utils/format_date.dart';

class NotifScreen extends StatefulWidget {
  static const String routeName = '/notif';

  const NotifScreen({super.key});

  @override
  State<NotifScreen> createState() => _NotifScreenState();
}

class _NotifScreenState extends State<NotifScreen> {
  final userData = GetStorage().read('userData');
  final isLogin = GetStorage().read('isLogin');

  final NotifController _notifController = Get.find();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (userData != null) {
      _notifController.getNotif();
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: Obx(() {
        var notifList = _notifController.notifList;

        if (notifList.isEmpty || isLogin != null && isLogin == false) {
          return Stack(
            children: [
              CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: <Widget>[
                  // ------ Content -------
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  const SizedBox(height: 120),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      NotifEmpty.notifEmpty,
                                      width: 300,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "You don't have any inventory notifications",
                                      style: TextStyle(
                                        color: Palette.greySkip,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(height: 25),
                                  // ----- Button SignIn SignUp ----
                                  if (isLogin == false || isLogin == null)
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 17,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(50),
                                                ),
                                                border: GradientBoxBorder(
                                                  gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
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
                                                    fontFamily:
                                                        'MontserratBold',
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
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                                                    fontFamily:
                                                        'MontserratBold',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  const SizedBox(height: 100),
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

              // ---- Button Back Notification ----
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 504),
                  width: width,
                  padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: Palette.bgDark,
                  ),
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
                          'Notification',
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
          );
        }

        return Stack(
          children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: <Widget>[
                // ----- SPACE For APP BAR & CONTENT ----
                const SliverToBoxAdapter(
                  child: SizedBox(height: 60),
                ),

                // ------ Content -------
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _notifController.updateNotif(
                                id: notifList[index].id ?? 0,
                              );
                              Future.delayed(const Duration(seconds: 2), () {
                                if (userData != null) {
                                  _notifController.getNotif();
                                  setState(() {
                                    notifList = _notifController.notifList;
                                  });
                                }
                              });
                            },
                            child: Container(
                              color: notifList[index].is_read == 'read'
                                  ? Colors.transparent
                                  : Palette.white.withOpacity(0.10),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 24,
                              ),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              if (notifList[index].type ==
                                                  'Info')
                                                Image.asset(
                                                  InfoIcon.infoIcon,
                                                  width: 20,
                                                ),
                                              if (notifList[index].type ==
                                                  'Transaction')
                                                Image.asset(
                                                  CartGradientIcon
                                                      .cartGradientIcon,
                                                  width: 23.01,
                                                ),
                                              const SizedBox(width: 10),
                                              Text(
                                                notifList[index].type ?? '',
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Palette.btnSwitch,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            FormatDate.format(
                                              notifList[index].created_at ?? '',
                                            ),
                                            style: GoogleFonts.rubik(
                                              textStyle: TextStyle(
                                                color: Palette.btnSwitch,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          notifList[index].title ?? '',
                                          style: TextStyle(
                                            color: Palette.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          notifList[index].description ?? '',
                                          style: GoogleFonts.rubik(
                                            textStyle: TextStyle(
                                              color: Palette.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    childCount: notifList.length,
                  ),
                ),
              ],
            ),

            // ---- Button Back Notification ----
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 504),
                width: width,
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Palette.bgDark,
                ),
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
                        'Notification',
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
        );
      }),
    );
  }
}
