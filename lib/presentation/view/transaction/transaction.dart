import 'package:flutter/material.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';

class TransactionSuccessScreen extends StatefulWidget {
  static const String routeName = '/transaction-success';

  const TransactionSuccessScreen({super.key});

  @override
  State<TransactionSuccessScreen> createState() =>
      _TransactionSuccessScreenState();
}

class _TransactionSuccessScreenState extends State<TransactionSuccessScreen> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
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
                              const SizedBox(height: 60),
                              Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  status
                                      ? SuccessGif.successGif
                                      : FailedGif.failedGif,
                                  width: 200,
                                ),
                              ),
                              const SizedBox(height: 81),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  status
                                      ? 'Congratulation!\n Transaction Successfuly'
                                      : 'Oh No! Something went\n wrong.',
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
                                  status
                                      ? 'Your Transaction is Successfully. You can Share and Finish Your Assessment Test.'
                                      : 'Please try again by repeating the same process.',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 70),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Total Purchase',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Rp 8.000.000',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 24,
                                    fontFamily: 'MontserratBold',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'September 5, 2023 10:00 AM',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
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
