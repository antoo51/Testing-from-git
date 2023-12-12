import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';

class MyConvexAppBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MyConvexAppBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Palette.purpleSoft,
            spreadRadius: 5,
            blurRadius: 50,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ConvexAppBar(
        style: TabStyle.fixedCircle,
        elevation: 0,
        height: 70,
        top: width < 504 ? -40 : -60,
        curveSize: width < 504 ? 110 : 130,
        backgroundColor: const Color(0xFF220D46),
        items: [
          TabItem(
            icon: currentIndex == 0
                ? Image.asset(IconHomeOn.iconHomeOn)
                : Image.asset(IconHomeOf.iconHomeOf),
            title: 'Home',
          ),
          TabItem(
            icon: currentIndex == 1
                ? Image.asset(IconResultOn.iconResultOn)
                : Image.asset(IconResultOf.iconResultOf),
            title: 'Result',
          ),
          TabItem(
            icon: currentIndex == 2
                ? Image.asset(IconDnaOn.iconDnaOn)
                : Image.asset(IconTalentDNA.iconDna),
            title: 'Talent DNA',
          ),
          TabItem(
            icon: currentIndex == 3
                ? Image.asset(IconHistoryOn.iconHistoryOn)
                : Image.asset(IconHistoryOf.iconHistoryOf),
            title: 'History',
          ),
          TabItem(
            icon: currentIndex == 4
                ? Image.asset(IconOrderOn.iconOrderOn)
                : Image.asset(IconOrderOf.iconOrderOf),
            title: 'Inventory',
          ),
        ],
        initialActiveIndex: currentIndex,
        onTap: onTap,
      ),
    );
  }
}
