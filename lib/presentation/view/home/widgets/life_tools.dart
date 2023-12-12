import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:get/get.dart';
import 'package:talent_dna/presentation/view/survey/survey.dart';

class LifeTools extends StatefulWidget {
  const LifeTools({super.key});

  @override
  State<LifeTools> createState() => _LifeToolsState();
}

class _LifeToolsState extends State<LifeTools> {
  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 37),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Text(
              'LIFE TOOLS',
              style: TextStyle(
                color: Palette.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        const SizedBox(height: 32),
        CarouselSlider(
          options: CarouselOptions(
            height: 300,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentSlide = index;
              });
            },
          ),
          items: [1, 2, 3].asMap().entries.map((entry) {
            int index = entry.key;
            // var item = entry.value;
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 4.0,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: index == _currentSlide
                          ? Palette.blueFgradient
                          : Palette.pinkFgradient,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Palette.blueFgradient,
                              Palette.gradientInputLight
                            ]),
                        width: 1,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: const Alignment(0.1, 2.5),
                        colors: [
                          Palette.pinkFgradient,
                          index == _currentSlide
                              ? Palette.bgDark
                              : Palette.blueGradient,
                          index == _currentSlide
                              ? Palette.bgDark
                              : Palette.blueGradient,
                          index == _currentSlide
                              ? Palette.bgDark
                              : Palette.blueGradient,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 40),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '45 TOP TALENT',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 28,
                                    fontFamily: 'MontserratBold',
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                      color: Palette.white,
                                      fontSize: 28,
                                      fontFamily: 'MontserratBold',
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      color: Palette.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '180',
                                    style: TextStyle(
                                      color: Palette.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Progress Test',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(SurveyScreen.routeName);
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 31,
                                    vertical: 17,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Palette.purpleStart,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.play_arrow_rounded,
                                        size: 20,
                                        color: Palette.white,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        'START TEST',
                                        style: TextStyle(
                                          color: Palette.white,
                                          fontFamily: 'MontserratBold',
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
