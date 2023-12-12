import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/widget/cart.dart';

class ResultScreen extends StatefulWidget {
  static const String routeName = '/result';

  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    final isLogin = box.read('isLogin');

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          // ------ App Bar -------
          SliverToBoxAdapter(
            child: Container(
              height: 115,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(BgAppBar.bgAppBar),
                  fit: BoxFit.fill,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Talent Result',
                      style: TextStyle(
                        color: Palette.white,
                        fontFamily: 'MontserratBold',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            IconButton(
                              icon: Image.asset(
                                IconSearch.iconSearch,
                                width: 22,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        const CartMenu(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

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
                          const SizedBox(height: 30),
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              ResultEmpty.resultEmpty,
                              width: 300,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "You haven't found any results. Discover your talents by purchasing Talent DNA!",
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
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
