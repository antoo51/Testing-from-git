import 'package:flutter/material.dart';
import 'package:talent_dna/core/constants/colors.dart';

void showCustomSnackBar(
  BuildContext context,
  String titleMessage,
  String message,
) {
  double width = MediaQuery.of(context).size.width;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      width: width >= 500 ? 480 : width,
      padding: const EdgeInsets.only(
        bottom: 50,
        left: 10,
        right: 10,
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        height: 100,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          border: Border.all(
            color: Palette.white.withOpacity(0.2),
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          color: Palette.bgSnackbar,
        ),
        child: Row(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Palette.greenSuccess,
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Palette.white,
                    size: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 2),
                  Text(
                    titleMessage,
                    style: TextStyle(
                        color: Palette.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Text(
                    message,
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 12,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
