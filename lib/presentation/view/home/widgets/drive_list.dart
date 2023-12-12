import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/hardcode/drive_list.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';

class DriveDetailScreen extends StatefulWidget {
  static const String routeName = '/detail/drive';

  const DriveDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DriveDetailScreen> createState() => _DriveDetailScreenState();
}

class _DriveDetailScreenState extends State<DriveDetailScreen> {
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 75),
                      Text(
                        'Drive',
                        style: TextStyle(
                          color: Palette.white,
                          fontSize: 24,
                          fontFamily: 'MontserratBold',
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        driveList[0].description,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            color: Palette.greySoft,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: driveList.map((Drive drive) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(24),
                                    ),
                                    color: Palette.bgDark,
                                    border: GradientBoxBorder(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Palette.whiteSnackbar
                                                .withOpacity(0),
                                            Palette.whiteSnackbar
                                                .withOpacity(0.2)
                                          ]),
                                      width: 1,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.black.withOpacity(0.4),
                                        spreadRadius: 2,
                                        blurRadius: 40,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          drive.title,
                                          style: TextStyle(
                                            color: Palette.blueFgradient,
                                            fontSize: 14,
                                            fontFamily: 'MontserratBold',
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          drive.description,
                                          style: GoogleFonts.rubik(
                                            textStyle: TextStyle(
                                              color: Palette.greySoft,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    );
                  },
                  childCount: 1,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 50),
              ),
            ],
          ),

          // ---- app bar ----
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: width,
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
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
                      'Talent Detail',
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
    );
  }
}
