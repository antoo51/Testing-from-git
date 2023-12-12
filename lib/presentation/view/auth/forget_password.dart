import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/auth/forget_password_controller.dart';

class ForgetPasswordScreen extends StatefulWidget {
  static const String routeName = '/forget-password';

  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final ResetPasswordController _resetPasswordController =
      Get.put(ResetPasswordController());
  final TextEditingController _emailController = TextEditingController();

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
                                    'Forget Password',
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
                                    'Enter the email address associated with your account and we’ll send you a link to reset your password.',
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
                                  'Email',
                                  style: TextStyle(
                                      color: Palette.white, fontSize: 16),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Email is Required';
                                        }
                                        if (!RegExp(
                                                r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-z]{2,4})$')
                                            .hasMatch(value)) {
                                          return 'Email not in the correct format';
                                        }
                                        if (value.length < 6) {
                                          return 'Minimum 6 characters';
                                        }
                                        return null;
                                      },
                                      controller: _emailController,
                                      decoration: InputDecoration(
                                        hintText: 'mail@mail.com',
                                        hintStyle:
                                            TextStyle(color: Palette.hintText),
                                        fillColor:
                                            Palette.black.withOpacity(0.35),
                                        filled: true,
                                        contentPadding:
                                            const EdgeInsets.all(12.0),
                                      ),
                                      style: TextStyle(color: Palette.white),
                                    ),
                                    const SizedBox(
                                      height: 64,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        if (_formKey.currentState!.validate()) {
                                          _resetPasswordController
                                              .resetPassword(
                                            email: _emailController.text,
                                          );
                                        }
                                      },
                                      child: Container(
                                        width: width,
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 17,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(50),
                                          ),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Palette.blueFgradient,
                                              Palette.pinkFgradient,
                                            ],
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'SEND EMAIL',
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
