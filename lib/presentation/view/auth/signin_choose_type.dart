import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';

class SignInChooseTypeScreen extends StatefulWidget {
  static const String routeName = '/signin/choose/type';

  const SignInChooseTypeScreen({super.key});

  @override
  State<SignInChooseTypeScreen> createState() => _SignInChooseTypeScreenState();
}

class _SignInChooseTypeScreenState extends State<SignInChooseTypeScreen> {
  bool _buttonPersonal = true;
  bool _buttonOrganization = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Stack(
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
                              const SizedBox(height: 5),
                              Image.asset(
                                LogoWithTaglineBottom.logoWithTaglineBottom,
                                width: 200,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Choose Your Account Type',
                                    style: TextStyle(
                                      color: Palette.white,
                                      fontFamily: 'MontserratBold',
                                      fontSize: 24,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Select one of account types to identify your personality',
                                    style: TextStyle(
                                      color: Palette.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 196,
                                decoration: BoxDecoration(
                                  color: Palette.bgPurpleTransparant,
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Stack(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // ------- Button Personal --------
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                _buttonPersonal = true;
                                                _buttonOrganization = false;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: _buttonPersonal
                                                    ? Palette.purpleTransparant
                                                    : Colors.transparent,
                                                borderRadius: _buttonPersonal
                                                    ? const BorderRadius.all(
                                                        Radius.circular(24))
                                                    : const BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(0),
                                                        topLeft:
                                                            Radius.circular(24),
                                                        bottomLeft:
                                                            Radius.circular(24),
                                                        bottomRight:
                                                            Radius.circular(0)),
                                                border: GradientBoxBorder(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: _buttonPersonal
                                                        ? [
                                                            Palette
                                                                .blueFgradient,
                                                            Palette
                                                                .pinkFgradient
                                                          ]
                                                        : [
                                                            Colors.transparent,
                                                            Colors.transparent
                                                          ],
                                                  ),
                                                  width:
                                                      _buttonPersonal ? 2 : 0,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    IconPersonal.iconPersonal,
                                                    width: 70,
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Text(
                                                    'Personal',
                                                    style: TextStyle(
                                                      color: _buttonPersonal
                                                          ? Palette.white
                                                          : Palette.greyLight,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        // ------- Button Organizational --------
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                _buttonPersonal = false;
                                                _buttonOrganization = true;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: _buttonOrganization
                                                    ? Palette.purpleTransparant
                                                    : Colors.transparent,
                                                borderRadius:
                                                    _buttonOrganization
                                                        ? const BorderRadius
                                                            .all(Radius
                                                                .circular(24))
                                                        : const BorderRadius
                                                            .only(
                                                            bottomLeft: Radius
                                                                .circular(0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0),
                                                            topRight:
                                                                Radius.circular(
                                                                    24),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    24)),
                                                border: GradientBoxBorder(
                                                  gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      colors:
                                                          _buttonOrganization
                                                              ? [
                                                                  Palette
                                                                      .blueFgradient,
                                                                  Palette
                                                                      .pinkFgradient
                                                                ]
                                                              : [
                                                                  Colors
                                                                      .transparent,
                                                                  Colors
                                                                      .transparent
                                                                ]),
                                                  width: _buttonOrganization
                                                      ? 2
                                                      : 0,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    IconCorporate.iconCorporate,
                                                    width: 70,
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Text(
                                                    'Organizational',
                                                    style: TextStyle(
                                                      color: _buttonOrganization
                                                          ? Palette.white
                                                          : Palette.greyLight,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 100,
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
                width: 50,
                height: 50,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
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
            // Button Continue Sign In
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    MainScreen.routeName,
                  );
                },
                child: Container(
                  width: width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(vertical: 19),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Palette.blueFgradient, Palette.pinkFgradient],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'CONTINUE SIGN IN',
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
      ),
    );
  }
}
