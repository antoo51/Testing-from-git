// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:share_plus/share_plus.dart';
import 'package:talent_dna/presentation/controller/main/inventory/inventory_claim_corporate.dart';
import 'package:talent_dna/presentation/controller/main/inventory/inventory_claim_personal.dart';

void showDialogClaim(
  BuildContext context, {
  required String title,
  required String description,
  required int idUser,
  required int userType,
  required String screen,
  String? link,
  int? event_id,
  int? type,
}) {
  final ClaimInventoryPersonalController claimInventoryPersonalController =
      Get.put(ClaimInventoryPersonalController());

  final ClaimInventoryCorpoController claimInventoryCorpoController =
      Get.put(ClaimInventoryCorpoController());

  showDialog(
    context: context,
    builder: (BuildContext context) {
      bool isLoadingClaim = false;
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
                        if (screen == 'inventory')
                          Container(
                            width: 122,
                            margin: const EdgeInsets.only(right: 20),
                            child: InkWell(
                              onTap: () {
                                Share.share(
                                  'Claim https://talentdna-dev.meteor.asia/main-screen?claim=$link',
                                  subject: 'Assesment Talent DNA!',
                                );
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Expanded(
                          child: InkWell(
                            onTap: isLoadingClaim
                                ? null
                                : () {
                                    setState(() {
                                      isLoadingClaim = true;
                                    });
                                    if (userType == 0) {
                                      claimInventoryPersonalController
                                          .doClaimInventoryPersonal(
                                        idUser: idUser,
                                        linkClaim: link ?? '',
                                      );
                                    } else {
                                      claimInventoryCorpoController
                                          .doClaimInventoryCorpo(
                                        event_id: event_id ?? 0,
                                        type: type ?? 0,
                                      );
                                    }
                                    Future.delayed(const Duration(seconds: 4),
                                        () {
                                      Navigator.pop(context);
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
                                      isLoadingClaim
                                          ? Palette.greySkip
                                          : Palette.blueFgradient,
                                      isLoadingClaim
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
                                  if (isLoadingClaim)
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
