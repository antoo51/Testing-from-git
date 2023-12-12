import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';

class IntroPageTwo extends StatelessWidget {
  static const String routeName = '/intro-two';

  const IntroPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.bgDark,
        image: const DecorationImage(
          image: AssetImage(ImgBlurPurple.imgBlurPurple),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 85,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  OnBoadringTwo.onBoadringTwo,
                  height: 240,
                ),
                const SizedBox(height: 50),
                // Teks
                SizedBox(
                  width: 340,
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'onboarding.second.title'.tr,
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'MontserratBold',
                                color: Palette.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'onboarding.second.desc'.tr,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Palette.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
