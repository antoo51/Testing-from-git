import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/inventory/inventory_corporate_models.dart';
import 'package:talent_dna/data/model/inventory/inventory_personal_models.dart';
import 'package:talent_dna/utils/format_date.dart';

class UserClaimModal extends StatelessWidget {
  final ClaimModel? claims;
  final List<ClaimCorporateModel>? claimsCorporate;
  final int accountType;

  const UserClaimModal({
    super.key,
    this.claims,
    required this.accountType,
    this.claimsCorporate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Palette.bgDark,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 4,
              width: 80,
              decoration: BoxDecoration(
                color: Palette.white,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Claimed',
              style: TextStyle(
                color: Palette.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 24),
          if (accountType == 0) // Personal
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return userClaimModal(
                    context,
                    claims?.nama ?? '',
                    claimsCorporate?[index].date.toString() == null
                        ? ''
                        : FormatDate.format(claims?.date.toString() ?? ''),
                  );
                },
              ),
            ),
          if (accountType == 1) // Corporate
            Expanded(
              child: ListView.builder(
                itemCount: claimsCorporate?.length,
                itemBuilder: (context, index) {
                  return userClaimModal(
                    context,
                    claimsCorporate?[index].nama ?? '',
                    claimsCorporate?[index].date.toString() == null
                        ? ''
                        : FormatDate.format(
                            claimsCorporate?[index].date.toString() ?? '',
                          ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }

  Widget userClaimModal(BuildContext context, String user, String date) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                Text(
                  user,
                  style: TextStyle(
                    color: Palette.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                  date,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      color: Palette.greyLight,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (date != '')
            Divider(
              color: Palette.devider,
              thickness: 0.5,
            ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
