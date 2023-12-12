import 'package:flutter/material.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';

class CreatePasswordScreen extends StatefulWidget {
  static const String routeName = '/create-password';

  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  bool _passwordVisible = true;
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

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
                                    'Create Password',
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
                                    'Please enter your new password to regain access to your account.',
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
                                height: 45,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                      color: Palette.white, fontSize: 16),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: _passwordController,
                                obscureText: _passwordVisible,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  fillColor: Palette.primaryOpacity,
                                  filled: true,
                                  contentPadding: const EdgeInsets.all(12.0),
                                  hintStyle: TextStyle(color: Palette.white),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                    child: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Palette.white,
                                      size: 18,
                                    ),
                                  ),
                                ),
                                style: TextStyle(color: Palette.white),
                              ),
                              const SizedBox(
                                height: 64,
                              ),
                              InkWell(
                                onTap: () {
                                  showCustomSnackBar(
                                    context,
                                    'Success!',
                                    'Sign In now',
                                  );
                                  Future.delayed(const Duration(seconds: 4),
                                      () {
                                    Navigator.pushNamed(
                                      context,
                                      SignInScreen.routeName,
                                    );
                                  });
                                },
                                child: Container(
                                  width: width,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50)),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Palette.blueFgradient,
                                        Palette.pinkFgradient
                                      ],
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'CREATE PASSWORD',
                                      style: TextStyle(
                                        color: Palette.white,
                                        fontSize: 18,
                                        fontFamily: 'MontserratBold',
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
            // ---- Button Back
            Positioned(
              top: 10,
              left: 20,
              child: SizedBox(
                width: 50,
                height: 50,
                child: GestureDetector(
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
          ],
        ),
      ),
    );
  }
}
