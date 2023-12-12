import 'package:flutter/material.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';

class ApprovedScreen extends StatefulWidget {
  static const String routeName = '/approved';

  const ApprovedScreen({super.key});

  @override
  State<ApprovedScreen> createState() => _ApprovedScreenState();
}

class _ApprovedScreenState extends State<ApprovedScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(BgApproval.bgApproval),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 35),
                              Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  ApprovalGif.approvalGif,
                                  width: 220,
                                ),
                              ),
                              const SizedBox(height: 81),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Your request account will be approved!',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 24,
                                    fontFamily: 'MontserratBold',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Please kindly wait, we sent it right away!',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 70),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    MainScreen.routeName,
                                  );
                                },
                                child: Center(
                                  child: Container(
                                    width: width,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 19,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                      border: Border.all(
                                        color: Palette.white,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'SIGN IN AS GUEST',
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
                    },
                    childCount: 1,
                  ),
                )
              ],
            ),

            // Button Close
            Positioned(
              top: 20,
              right: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    MainScreen.routeName,
                  );
                },
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: Icon(
                    Icons.close,
                    color: Palette.white,
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
