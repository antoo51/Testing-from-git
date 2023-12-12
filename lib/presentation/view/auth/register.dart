import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/auth/sign_up_controller.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';

class RegisterScreen extends GetView<SignUpController> {
  static const String routeName = '/register';

  const RegisterScreen({super.key});

  Future<void> signUpWithGoogle() async {
    GoogleAuthProvider googleProvider = GoogleAuthProvider();
    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');

    try {
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithPopup(googleProvider);
      final User? user = userCredential.user;

      if (user != null) {
        controller.goToStepTwo(user: user);
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
                            // Text Or Sign Up with ----------
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
                                      'Or Sign Up with',
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
                            signupSSOWidget(),
                            const SizedBox(height: 100),
                            signInWidget(context),
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

  Row signInWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already Have an Account?",
          style: TextStyle(
            color: Palette.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              SignInScreen.routeName,
            );
          },
          child: Text(
            'Sign In',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'MontserratExtraBold',
              color: Palette.white,
            ),
          ),
        ),
      ],
    );
  }

  InkWell signupSSOWidget() {
    return InkWell(
      onTap: signUpWithGoogle,
      child: Center(
        child: Container(
          width: Get.width,
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
                'Sign Up with Google',
                style: TextStyle(
                  color: Palette.white,
                  fontSize: 15,
                  fontFamily: 'MontserratBold',
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Column headingWidget() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Welcome,',
            style: TextStyle(
              color: Palette.white,
              fontSize: 32,
              fontFamily: 'MontserratExtraBold',
            ),
          ),
        ),
        const SizedBox(height: 12),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Sign up for access all features and find your talent.',
            style: TextStyle(color: Palette.white, fontSize: 18),
          ),
        ),
      ],
    );
  }

  Image logoWidget() {
    return Image.asset(
      LogoWithTaglineBottom.logoWithTaglineBottom,
      width: 200,
      height: 200,
    );
  }
}

class FormView extends GetView<SignUpController> {
  const FormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Email',
              style: TextStyle(color: Palette.white, fontSize: 16),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: controller.emailController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
            decoration: InputDecoration(
              hintText: 'mail@mail.com',
              contentPadding: const EdgeInsets.all(12.0),
              hintStyle: TextStyle(color: Palette.white),
              fillColor: Palette.black.withOpacity(0.35),
              filled: true,
            ),
            style: TextStyle(color: Palette.white),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Password',
              style: TextStyle(color: Palette.white, fontSize: 16),
            ),
          ),
          const SizedBox(height: 8),
          Obx(
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
                hintStyle: TextStyle(color: Palette.white),
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
          ),
          const SizedBox(height: 20),
          // Button "SIGN UP" -------------
          InkWell(
            onTap: () => controller.goToStepTwo(),
            child: Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(vertical: 19),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Palette.blueFgradient, Palette.pinkFgradient]),
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
        ],
      ),
    );
  }
}
