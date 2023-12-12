import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/auth/sign_in_controller.dart';
import 'package:talent_dna/presentation/view/auth/forget_password.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';

class SignInScreen extends GetView<SignInController> {
  static const String routeName = '/signin';

  const SignInScreen({super.key});

  Future<void> signInWithGoogle() async {
    GoogleAuthProvider googleProvider = GoogleAuthProvider();
    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');

    try {
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithPopup(googleProvider);
      final User? user = userCredential.user;

      if (user != null) {
        controller.doSSOSignIn(user);
      } else {
        Get.snackbar(
          'Failed!',
          "Failed to Sign In $user",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Palette.redNotice,
          colorText: Palette.white,
          margin: const EdgeInsets.only(
            bottom: 50,
            right: 10,
            left: 10,
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        'Failed!',
        e.message ?? 'Failed to Sign In',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Palette.redNotice,
        colorText: Palette.white,
        margin: const EdgeInsets.only(
          bottom: 50,
          right: 10,
          left: 10,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = Get.width;

    Widget logoWidget() {
      return Image.asset(
        LogoWithTaglineBottom.logoWithTaglineBottom,
        width: 200,
        height: 200,
      );
    }

    Widget headingWidget() {
      return Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Welcome Back,',
              style: TextStyle(
                fontFamily: 'MontserratExtraBold',
                color: Palette.white,
                fontSize: 32,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Sign in for access all features and find your talent.',
              style: TextStyle(color: Palette.white, fontSize: 18),
            ),
          ),
        ],
      );
    }

    Widget buttonSSOWidget() {
      return InkWell(
        onTap: signInWithGoogle,
        child: Center(
          child: Container(
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 19),
            decoration: BoxDecoration(
              color: Palette.black.withOpacity(0.4),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              border: GradientBoxBorder(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Palette.blueFgradient, Palette.pinkFgradient]),
                width: 2,
              ),
            ),
            child: Center(
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Image.asset(
                  IconGoogle.iconGoogle,
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Sign In with Google',
                  style: TextStyle(
                    fontFamily: 'MontserratBold',
                    color: Palette.white,
                    fontSize: 15,
                  ),
                ),
              ]),
            ),
          ),
        ),
      );
    }

    Widget buttonGuestWidget() {
      return InkWell(
        onTap: () => Get.offAllNamed(MainScreen.routeName),
        child: Center(
          child: Container(
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 19),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              border: Border.all(
                color: Palette.white,
                width: 1,
              ),
              color: Palette.black.withOpacity(0.4),
            ),
            child: Center(
              child: Text(
                'Sign In As Guest',
                style: TextStyle(
                  fontFamily: 'MontserratBold',
                  color: Palette.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget footerWidget() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account",
            style: TextStyle(
              color: Palette.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () => Get.offAllNamed(RegisterScreen.routeName),
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontFamily: 'MontserratBold',
                fontSize: 16,
                color: Palette.white,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  ImgBackgroundSplashScreen.imgBackgroundSplashScreen),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            logoWidget(),
                            const SizedBox(height: 20),
                            headingWidget(),
                            const SizedBox(height: 40),
                            const FormView(),
                            const SizedBox(height: 20),
                            // Text Or Sign In with ----------
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Palette.white,
                                      thickness: 1.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      'Or Sign In with',
                                      style: TextStyle(
                                        color: Palette.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Palette.white,
                                      thickness: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            buttonSSOWidget(),
                            const SizedBox(height: 20),
                            buttonGuestWidget(),
                            const SizedBox(height: 100),
                            footerWidget(),
                          ],
                        );
                      },
                      childCount: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FormView extends GetView<SignInController> {
  const FormView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = Get.width;

    Widget emailWidget() {
      return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Email is Required';
          }
          if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-z]{2,4})$')
              .hasMatch(value)) {
            return 'Email not in the correct format';
          }
          if (value.length < 6) {
            return 'Minimum 6 characters';
          }
          return null;
        },
        controller: controller.emailController,
        decoration: InputDecoration(
          hintText: 'mail@mail.com',
          contentPadding: const EdgeInsets.all(12.0),
          hintStyle: TextStyle(color: Palette.hintText),
          fillColor: Palette.black.withOpacity(0.35),
          filled: true,
        ),
        style: TextStyle(color: Palette.white),
      );
    }

    Widget passwordWidget() {
      return Obx(
        () => TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Password is Required';
            }
            if (value.length < 8) {
              return 'Password must be at least 8 characters';
            }
            if (!value.contains(RegExp(r'[0-9]'))) {
              return 'Password must contain at least one number';
            }
            if (!value.contains(RegExp(r'[a-z]'))) {
              return 'Password must contain at least one lowercase letter';
            }
            if (!value.contains(RegExp(r'[A-Z]'))) {
              return 'Password must contain at least one uppercase letter';
            }
            if (!value.contains(RegExp(r'[!@#$%^&*()_+{}|:;<>,.?~]'))) {
              return 'Password must contain at least one special character';
            }
            return null;
          },
          controller: controller.passwordController,
          obscureText: controller.passwordVisible.value,
          decoration: InputDecoration(
            hintText: 'Password',
            fillColor: Palette.black.withOpacity(0.35),
            filled: true,
            contentPadding: const EdgeInsets.all(12.0),
            hintStyle: TextStyle(color: Palette.hintText),
            suffixIcon: GestureDetector(
              onTap: () => controller.passwordVisible.toggle(),
              child: Icon(
                controller.passwordVisible.isTrue
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: Palette.white,
                size: 18,
              ),
            ),
          ),
          style: TextStyle(color: Palette.white),
        ),
      );
    }

    Widget forgotPassWidget() {
      return Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: () => Get.toNamed(ForgetPasswordScreen.routeName),
          child: Text(
            'Forget Password?',
            style: TextStyle(
              color: Palette.white,
              fontFamily: 'MontserratBold',
              fontSize: 16,
            ),
          ),
        ),
      );
    }

    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Email',
              style: TextStyle(
                color: Palette.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8),
          emailWidget(),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Password',
              style: TextStyle(color: Palette.white, fontSize: 16),
            ),
          ),
          const SizedBox(height: 8),
          passwordWidget(),
          const SizedBox(height: 20),
          forgotPassWidget(),
          const SizedBox(height: 20),
          // Button "SIGN IN" -------------
          Obx(
            () => InkWell(
              onTap: controller.doSignIn,
              child: Container(
                width: width,
                padding: const EdgeInsets.symmetric(vertical: 19),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        controller.isLoading.isTrue
                            ? Palette.greySkip
                            : Palette.blueFgradient,
                        controller.isLoading.isTrue
                            ? Palette.greySkip
                            : Palette.pinkFgradient
                      ]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontFamily: 'MontserratBold',
                        color: Palette.white,
                        fontSize: 18,
                      ),
                    ),
                    if (controller.isLoading.isTrue)
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SizedBox(
                          height: 12,
                          width: 12,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Palette.white,
                          ),
                        ),
                      ),
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
