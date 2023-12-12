import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';

void showDefaultDialog(
  BuildContext context, {
  required String title,
  required String description,
  bool showButtonConfirm = false,
  bool showButtonClaim = false,
  bool showButtonShare = false,
  bool showButtonSubmit = false,
  bool logout = false,
}) {
  final box = GetStorage();
  final storageService = Get.find<StorageService>();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      bool isLoading = false;
      return StatefulBuilder(builder: (context, StateSetter setState) {
        return Dialog(
          backgroundColor: Palette.bgDark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            clipBehavior:
                Clip.none, // Memungkinkan widget melewati batas pop-up
            alignment: Alignment.topRight,
            children: [
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 48),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'MontserratBold',
                          color: Palette.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        description,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Palette.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (showButtonShare)
                          Container(
                            width: 122,
                            margin: const EdgeInsets.only(right: 20),
                            child: InkWell(
                              onTap: isLoading
                                  ? null
                                  : () {
                                      setState(() {
                                        isLoading = true;
                                      });
                                      Future.delayed(const Duration(seconds: 4),
                                          () {
                                        Navigator.pop(context);
                                      });
                                    },
                              child: Center(
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                    border: Border.all(
                                      color: Palette.white,
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'SHARE',
                                        style: TextStyle(
                                          color: Palette.white,
                                          fontSize: 15,
                                          fontFamily: 'MontserratBold',
                                        ),
                                      ),
                                      if (isLoading)
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
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
                          ),
                        if (showButtonSubmit)
                          Expanded(
                            child: InkWell(
                              onTap: isLoading
                                  ? null
                                  : () {
                                      setState(() {
                                        isLoading = true;
                                      });
                                      Future.delayed(const Duration(seconds: 4),
                                          () {
                                        Navigator.pop(context);
                                      });
                                    },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        isLoading
                                            ? Palette.greySkip
                                            : Palette.blueFgradient,
                                        isLoading
                                            ? Palette.greySkip
                                            : Palette.pinkFgradient
                                      ]),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'SUBMIT',
                                      style: TextStyle(
                                        color: Palette.white,
                                        fontSize: 16,
                                        fontFamily: 'MontserratBold',
                                      ),
                                    ),
                                    if (isLoading)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
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
                        if (showButtonConfirm)
                          Expanded(
                            child: InkWell(
                              onTap: isLoading
                                  ? null
                                  : () {
                                      setState(() {
                                        isLoading = true;
                                      });
                                      if (logout) {
                                        box.write('isLogin', false);
                                        box.remove('userData');
                                        box.remove('orderNumber');

                                        storageService.logout();
                                        Get.offAllNamed(SignInScreen.routeName);
                                      }
                                    },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        isLoading
                                            ? Palette.greySkip
                                            : Palette.blueFgradient,
                                        isLoading
                                            ? Palette.greySkip
                                            : Palette.pinkFgradient
                                      ]),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'CONFIRM',
                                      style: TextStyle(
                                        color: Palette.white,
                                        fontSize: 16,
                                        fontFamily: 'MontserratBold',
                                      ),
                                    ),
                                    if (isLoading)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
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
                        if (showButtonClaim)
                          Expanded(
                            child: InkWell(
                              onTap: isLoading
                                  ? null
                                  : () {
                                      setState(() {
                                        isLoading = true;
                                      });

                                      Future.delayed(const Duration(seconds: 4),
                                          () {
                                        Navigator.pop(context);
                                      });
                                    },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        isLoading
                                            ? Palette.greySkip
                                            : Palette.blueFgradient,
                                        isLoading
                                            ? Palette.greySkip
                                            : Palette.pinkFgradient
                                      ]),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'CLAIM',
                                      style: TextStyle(
                                        color: Palette.white,
                                        fontSize: 16,
                                        fontFamily: 'MontserratBold',
                                      ),
                                    ),
                                    if (isLoading)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
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
                    )
                  ],
                ),
              ),
              Positioned(
                top: -15,
                right: -15,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Palette.redNotice,
                    ),
                    child: Icon(
                      Icons.close,
                      color: Palette.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      });
    },
  );
}
