import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/controller/main/inventory/inventory_controller.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/survey/result.dart';
import 'package:talent_dna/presentation/view/survey/widget/slider.dart';

class SurveyScreen extends StatefulWidget {
  static const String routeName = '/survey';

  const SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  final box = GetStorage();
  final userData = GetStorage().read('userData');
  final storageService = Get.find<StorageService>();
  final InventoryController _inventoryController = Get.find();

  List<double> sliderValues = List.generate(5, (index) => 1.0);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (userData != null) {
      _inventoryController.getInventoryList(idUser: userData['id'].toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final isLogin = box.read('isLogin');

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: Center(
        child: Obx(() {
          var inventoryList = _inventoryController.inventoryList;

          if (isLogin == false && isLogin == null) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Data Survey Empty",
                            style: TextStyle(
                              color: Palette.greySkip,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 25),
                        // ----- Button SignIn SignUp ----
                        if (isLogin == false && isLogin == null)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RegisterScreen.routeName);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 17,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
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
                                    Get.toNamed(SignInScreen.routeName);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 17,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
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
                        const SizedBox(height: 100),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
          return CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                // --- App Bar ----
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                      color: Palette.bgDark,
                      boxShadow: [
                        BoxShadow(
                          color: Palette.purpleSoft.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 50,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  LogoTalentDna.logoTalentDna,
                                  width: 78,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'Hallo,',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            userData != null
                                                ? userData['fullName']
                                                : '',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 11),
                                    if (storageService.profile.value.image !=
                                        null)
                                      Container(
                                        width: 48,
                                        height: 48,
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ShaderMask(
                                      shaderCallback: (Rect bounds) {
                                        return LinearGradient(
                                          colors: [
                                            Palette.pinkFgradient,
                                            Palette.purpleStart
                                          ],
                                          stops: const [0.0, 1.0],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ).createShader(bounds);
                                      },
                                      child: Text(
                                        'PROGRESS',
                                        style: TextStyle(
                                          color: Palette.white,
                                          fontSize: 16,
                                          fontFamily: 'MontserratBold',
                                        ),
                                      ),
                                    ),
                                    ShaderMask(
                                      shaderCallback: (Rect bounds) {
                                        return LinearGradient(
                                          colors: [
                                            Palette.pinkFgradient,
                                            Palette.purpleStart
                                          ],
                                          stops: const [0.0, 1.0],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ).createShader(bounds);
                                      },
                                      child: Text(
                                        '30%',
                                        style: TextStyle(
                                          color: Palette.white,
                                          fontSize: 16,
                                          fontFamily: 'MontserratBold',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          ProgressBar(
                            value: 0.3,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Palette.pinkFgradient,
                                Palette.purpleStart
                              ],
                            ),
                            backgroundColor: Palette.white,
                            height: 20,
                            width: width,
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ),

                // ----- SURVEY ------
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      bool isLastItem = index == 4;
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'You spend a lot of your free time exploring various random topics that pique your interest.',
                                    style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                        color: Palette.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(height: 40),
                                GradientSliderWidget(
                                  key: ValueKey(index),
                                  value: sliderValues[index],
                                  onChanged: (value) {
                                    setState(() {
                                      sliderValues[index] = value;
                                    });
                                  },
                                ),
                                const SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 23,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'DISAGREE',
                                        style: TextStyle(
                                          color: Palette.pinkFgradient,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'AGREE',
                                        style: TextStyle(
                                          color: Palette.blueFgradient,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                          if (isLastItem == false)
                            Divider(
                              color: Palette.deviderPurple.withOpacity(0.1),
                              thickness: 10,
                            ),
                          if (isLastItem == false) const SizedBox(height: 40),
                        ],
                      );
                    },
                    childCount: 5,
                  ),
                ),

                // ---- SUBMIT TEST ----
                SliverToBoxAdapter(
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(ResultAfterTestScreen.routeName);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                      ),
                      margin: const EdgeInsets.only(
                        left: 110,
                        right: 110,
                        bottom: 50,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: const Alignment(0.1, 2.7),
                            colors: [
                              Palette.blueFgradient,
                              Palette.pinkFgradient,
                            ]),
                      ),
                      child: Center(
                        child: Text(
                          'SUBMIT TEST',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Palette.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ]);
        }),
      ),
    );
  }
}
