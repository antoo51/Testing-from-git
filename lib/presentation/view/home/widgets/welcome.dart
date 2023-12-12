import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/view/profile/profile.dart';

class WelcomeTalent extends StatelessWidget {
  final storageService = Get.find<StorageService>();

  WelcomeTalent({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Obx(() {
      if (storageService.profile.value.id != null) {
        return Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.all(16.0),
          height: 100,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
                colors: [
                  storageService.profile.value.userType == 'Personal'
                      ? Palette.black.withOpacity(0.1)
                      : Palette.backgroundBlueFr,
                  Palette.black.withOpacity(0.1),
                  Palette.black.withOpacity(0.1),
                ]),
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            border: GradientBoxBorder(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Palette.blueFgradient, Palette.pinkFgradient],
              ),
              width: 1,
            ),
          ),
          child: InkWell(
            highlightColor: Palette.white,
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      if (storageService.profile.value.image == null)
                        Image.asset(
                          IconProfileDefault.iconProfileDefault,
                          width: 64,
                          height: 64,
                        ),
                      if (storageService.profile.value.image != null)
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                '${dotenv.env['TDNA_URL']}/assets/${storageService.profile.value.image}',
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            storageService.profile.value.fullName!,
                            style: TextStyle(
                              color: Palette.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            storageService.profile.value.userType!,
                            style: TextStyle(
                              color: Palette.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 25,
                    child: Image.asset(ChevronRight.chevronRight),
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        return Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.all(16.0),
          height: 100,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
                colors: [
                  Palette.backgroundBlueFr,
                  Palette.bgDark.withOpacity(0.2),
                  Palette.bgDark.withOpacity(0.2),
                ]),
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            border: GradientBoxBorder(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Palette.blueFgradient, Palette.pinkFgradient],
              ),
              width: 1,
            ),
          ),
          child: InkWell(
            highlightColor: Palette.white,
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Image.asset(
                        IconProfileDefault.iconProfileDefault,
                        width: 64,
                        height: 64,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome,',
                              style: TextStyle(
                                color: Palette.white,
                                fontSize: 20,
                                fontFamily: 'MontserratExtraBold',
                              ),
                            ),
                            const Spacer(),
                            Text(
                              'Sign In or Sign Up to Find Your Talent, Take Tests, and Enjoy the Journey!',
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                  color: Palette.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 25,
                    child: Image.asset(ChevronRight.chevronRight),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}
