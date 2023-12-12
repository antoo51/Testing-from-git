import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/controller/main/inventory/inventory_controller.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';

class ResultAfterTestScreen extends StatefulWidget {
  static const String routeName = '/result/test';
  const ResultAfterTestScreen({super.key});

  @override
  State<ResultAfterTestScreen> createState() => _ResultAfterTestScreenState();
}

class _ResultAfterTestScreenState extends State<ResultAfterTestScreen> {
  final InventoryController _inventoryController = Get.find();
  final storageService = Get.find<StorageService>();
  final userData = GetStorage().read('userData');
  final isLogin = GetStorage().read('isLogin');

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

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: Obx(() {
        var inventoryList = _inventoryController.inventoryList;

        if (inventoryList.isEmpty || isLogin == null) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      // ----- Button SignIn SignUp ----
                      if (isLogin == false || isLogin == null)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        return Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImgBackgroundSplashScreen.imgBackgroundSplashScreen,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    margin: const EdgeInsets.only(
                      top: 81,
                      left: 20,
                      right: 20,
                      bottom: 200,
                    ),
                    decoration: BoxDecoration(
                      color: Palette.black.withOpacity(0.15),
                      border: Border.all(
                        color: Palette.pinkFgradient,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Congratulations!',
                          style: TextStyle(
                            color: Palette.white,
                            fontFamily: 'MontserratBold',
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        Text(
                          'You successfully discover your TalentDNA! Scroll up to see the result.',
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              color: Palette.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
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
                        const SizedBox(height: 32),
                        if (storageService.profile.value.fullName != null)
                          Text(
                            storageService.profile.value.fullName ?? '',
                            style: TextStyle(
                              color: Palette.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        const SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              IconLink.iconLink,
                              width: 12,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'link-assessment-test-talent-dna-1',
                              style: TextStyle(
                                color: Palette.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          '45 TOP TALENT',
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              color: Palette.textSecond,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // ---- Buttom Sheet ----
            Positioned(
              bottom: 0,
              left: 0,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) {
                      return const FractionallySizedBox(
                        heightFactor: 0.9,
                        child: MyCustomBottomSheet(),
                      );
                    },
                  );
                },
                child: Container(
                  width: width,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Palette.deviderDark,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Image.asset(
                        ChevronTop.chevronTop,
                        width: 20,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Tap to See the Result',
                        style: TextStyle(
                          fontSize: 18,
                          color: Palette.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
            // ---- App Bar ---
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: width,
                constraints: const BoxConstraints(maxWidth: 504),
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(MainScreen.routeName);
                      },
                      child: Image.asset(
                        IconBack.iconBack,
                        width: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        IconDownload.iconDownload,
                        width: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class MyCustomBottomSheet extends StatefulWidget {
  const MyCustomBottomSheet({super.key});

  @override
  State<MyCustomBottomSheet> createState() => _MyCustomBottomSheetState();
}

class _MyCustomBottomSheetState extends State<MyCustomBottomSheet> {
  bool collapsActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Palette.deviderDark,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Palette.pinkFgradient.withOpacity(0.15),
            offset: const Offset(0.0, -2.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              ChevronBottom.chevronBottom,
              width: 20,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Scroll Down to Hide the Result',
            style: TextStyle(
              fontSize: 18,
              color: Palette.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 35),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(
                          24,
                        )),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Palette.purpleSoft,
                              Palette.gradientInputLight,
                            ],
                          ),
                          width: 2,
                        ),
                      ),
                      child: ExpansionTile(
                        collapsedShape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                        ),
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                        ),
                        tilePadding: const EdgeInsets.all(10),
                        title: Text(
                          'CONTEMPLATIVE',
                          style: TextStyle(
                            color: Palette.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Palette.purpleDark,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Palette.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        trailing: collapsActive
                            ? Icon(
                                Icons.add,
                                color: Palette.white,
                              )
                            : Icon(
                                Icons.remove,
                                color: Palette.white,
                              ),
                        onExpansionChanged: (value) {
                          setState(() {
                            collapsActive = value;
                          });
                        },
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'Lorem ipsum dolor sit amet consectetur. Malesuada netus feugiat risus lorem. Nullam quisque netus volutpat ornare enim. Vitae neque consequat laoreet lacus ligula et. Phasellus arcu hac viverra tellus. Massa eu convallis placerat a iaculis dignissim rhoncus a. Amet tristique augue leo ut non sit. Ut id in lacus neque enim. Eu mi diam porttitor turpis. Potenti nec sit id nulla duis turpis pharetra auctor. Leo fringilla mauris massa nisi. Non amet lectus in vivamus elit non velit in. Adipiscing id luctus sit diam. Erat pharetra enim urna dictumst. Nam vulputate suspendisse nisi fringilla interdum etiam proin. Sed lectus enim nulla pretium. Non elementum pretium pellentesque id tempus aliquet nec porttitor pellentesque. Facilisi aliquam vestibulum facilisis adipiscing in. Est posuere ultrices a vivamus scelerisque. A ac diam cursus lectus. Leo quam enim libero sed cras consectetur.',
                              style: TextStyle(
                                color: Palette.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
