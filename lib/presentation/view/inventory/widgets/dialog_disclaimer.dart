import 'package:flutter/material.dart';
import 'package:talent_dna/core/constants/colors.dart';

void showDialogDisclaimer(
  BuildContext context, {
  required String title,
  required String description,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
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
                          fontWeight: FontWeight.w300,
                          color: Palette.textModalDesc,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
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
