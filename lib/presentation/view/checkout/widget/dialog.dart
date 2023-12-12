import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/main/checkout/checkout_controller.dart';

void showDialogInvoice(
  BuildContext context, {
  required String title,
  required String description,
}) {
  final userData = GetStorage().read('userData');
  final CheckoutController _checkoutController = Get.put(CheckoutController());

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
            clipBehavior: Clip.none,
            alignment: Alignment.topRight,
            children: [
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
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
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
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
                                child: Center(
                                  child: Text(
                                    'CANCEL',
                                    style: TextStyle(
                                      color: Palette.white,
                                      fontSize: 15,
                                      fontFamily: 'MontserratBold',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: InkWell(
                            onTap: isLoading
                                ? null
                                : () {
                                    setState(() {
                                      isLoading = true;
                                    });
                                    _checkoutController.checkout(
                                      idUser: userData['id'].toString(),
                                      email: userData['email'],
                                      phone: userData['phoneNumber'],
                                      name: userData['fullName'],
                                    );
                                    Future.delayed(const Duration(seconds: 4),
                                        () {
                                      setState(() {
                                        isLoading = true;
                                      });
                                    });
                                  },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
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
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      });
    },
  );
}
