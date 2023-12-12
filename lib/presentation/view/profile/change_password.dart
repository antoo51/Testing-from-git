import 'package:flutter/material.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/view/auth/forget_password.dart';
// import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const String routeName = '/change-password';

  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool accountType = true;
  bool light = false;
  bool _oldPasswordVisible = true;
  bool _newPasswordVisible = true;
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          color: Palette.bgDark,
          child: Stack(
            children: [
              CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 25,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 40),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 24),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Column(
                                      children: [
                                        // ------- Old Password ----------
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Old Password',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 16,
                                              fontFamily: 'MontserratBold',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        TextField(
                                          controller: _oldPasswordController,
                                          obscureText: _oldPasswordVisible,
                                          decoration: InputDecoration(
                                            hintText: 'Password',
                                            fillColor: Palette.primaryOpacity,
                                            filled: true,
                                            contentPadding:
                                                const EdgeInsets.all(12.0),
                                            hintStyle:
                                                TextStyle(color: Palette.white),
                                            suffixIcon: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _oldPasswordVisible =
                                                      !_oldPasswordVisible;
                                                });
                                              },
                                              child: Icon(
                                                _oldPasswordVisible
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color: Palette.white,
                                                size: 18,
                                              ),
                                            ),
                                          ),
                                          style:
                                              TextStyle(color: Palette.white),
                                        ),
                                        const SizedBox(height: 20),
                                        // ------- End Old Password ----------
                                        InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              ForgetPasswordScreen.routeName,
                                            );
                                          },
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              'Forget Password?',
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 16,
                                                fontFamily: 'MontserratBold',
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        // ------- New Password ----------
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'New Password',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 16,
                                              fontFamily: 'MontserratBold',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        TextField(
                                          controller: _newPasswordController,
                                          obscureText: _newPasswordVisible,
                                          decoration: InputDecoration(
                                            hintText: 'New Password',
                                            fillColor: Palette.primaryOpacity,
                                            filled: true,
                                            contentPadding:
                                                const EdgeInsets.all(12.0),
                                            hintStyle:
                                                TextStyle(color: Palette.white),
                                            suffixIcon: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _newPasswordVisible =
                                                      !_newPasswordVisible;
                                                });
                                              },
                                              child: Icon(
                                                _newPasswordVisible
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color: Palette.white,
                                                size: 18,
                                              ),
                                            ),
                                          ),
                                          style:
                                              TextStyle(color: Palette.white),
                                        ),
                                        const SizedBox(height: 20),
                                        // ------- End New Password ----------
                                        const SizedBox(height: 140),
                                      ],
                                    ),
                                  )
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

              // ---- Button Back Edit Profile
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 504),
                  width: width,
                  padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: Palette.bgDark,
                    boxShadow: [
                      BoxShadow(
                        color: Palette.purpleSoft,
                        spreadRadius: 3,
                        blurRadius: 60,
                        offset: const Offset(0, 3),
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
                          'Change Password',
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

              // ----- Button CHANGE PASSWORD ------
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 504),
                  width: width,
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 25,
                    left: 30,
                    right: 30,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
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
                          'CHANGE PASSWORD',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
