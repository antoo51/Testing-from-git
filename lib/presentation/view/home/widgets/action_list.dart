import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/hardcode/action_list.dart';

class ActionDetailScreen extends StatefulWidget {
  static const String routeName = '/detail/action';

  const ActionDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ActionDetailScreen> createState() => _ActionDetailScreenState();
}

class _ActionDetailScreenState extends State<ActionDetailScreen> {
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
                        'Action',
                        style: TextStyle(
                          color: Palette.white,
                          fontSize: 24,
                          fontFamily: 'MontserratBold',
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        actionList[0].description,
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
                        children: actionList.map((ActionM action) {
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
                                          action.title,
                                          style: TextStyle(
                                            color: Palette.redNotice,
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
                                          action.description,
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
                  Navigator.pop(context);
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
