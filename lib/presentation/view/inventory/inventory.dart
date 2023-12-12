import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/inventory/inventory_personal_models.dart';
import 'package:talent_dna/presentation/controller/main/inventory/inventory_controller.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/inventory/widgets/dialog_claim.dart';
import 'package:talent_dna/presentation/view/inventory/widgets/dialog_disclaimer.dart';
import 'package:talent_dna/presentation/view/inventory/widgets/modal_bottom_sheet.dart';
import 'package:talent_dna/presentation/view/widget/cart.dart';
import 'package:talent_dna/presentation/view/widget/snackbar_success.dart';
import 'package:talent_dna/utils/format_date.dart';
// import 'package:talent_dna/utils/format_date.dart';

class InventoryScreen extends StatefulWidget {
  static const String routeName = '/inventory/personal';

  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  final box = GetStorage();
  final userData = GetStorage().read('userData');
  int selectedFilterIndex = 0;

  final InventoryController _inventoryController = Get.find();

  List<Map<String, dynamic>> filterData = [
    {'filter': 'All Order'},
    {'filter': '30 Days ago'},
    {'filter': '90 Days ago'},
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (userData != null) {
      _inventoryController.getInventoryList(
        idUser: userData['id'].toString(),
      );
    }
  }

  List<InventoryModel> _filterData(List<InventoryModel> inventoryList) {
    DateTime currentDate = DateTime.now();

    return inventoryList.where((inventoryItem) {
      String listDate = inventoryItem.date ?? '';
      String formattedDateString = listDate.replaceAll("Z", "");
      DateTime itemDate = DateTime.parse(formattedDateString);

      Duration differenceDays = currentDate.difference(itemDate);

      return (selectedFilterIndex == 1 &&
              differenceDays.inDays <= 30 &&
              differenceDays.inDays >= 0) ||
          (selectedFilterIndex == 2 &&
              differenceDays.inDays <= 90 &&
              differenceDays.inDays >= 0) ||
          selectedFilterIndex == 0;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final isLogin = box.read('isLogin');

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: Center(
        child: Obx(
          () {
            var inventoryList = _inventoryController.inventoryList;
            List<InventoryModel> inventoryWithFilter =
                _filterData(inventoryList);

            if (inventoryWithFilter.isEmpty ||
                isLogin == null ||
                isLogin == false) {
              return CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      height: 115,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(BgAppBar.bgAppBar),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              'Inventory',
                              style: TextStyle(
                                color: Palette.white,
                                fontFamily: 'MontserratBold',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: CartMenu(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 30),
                              Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  InventoryEmpty.inventoryEmpty,
                                  width: 300,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "You don't have any inventory links to share. Discover your talents and share with colleagues by getting Talent DNA!",
                                  style: TextStyle(
                                    color: Palette.greySkip,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 25),
                              // ----- Button SignIn SignUp ----
                              if (isLogin == false || isLogin == null)
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context,
                                            RegisterScreen.routeName,
                                          );
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 17,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(50),
                                            ),
                                            border: GradientBoxBorder(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Palette.white,
                                                    Palette.white
                                                  ]),
                                              width: 1,
                                            ),
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
                                    ),
                                    const SizedBox(width: 20),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context,
                                            SignInScreen.routeName,
                                          );
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 17,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50)),
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
                                              'SIGN IN',
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
                                  ],
                                ),
                              const SizedBox(height: 100),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }

            return Stack(
              children: [
                RefreshIndicator(
                  onRefresh: () async {
                    if (userData != null) {
                      _inventoryController.getInventoryList(
                        idUser: userData['id'].toString(),
                      );
                    }
                  },
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: <Widget>[
                      // ------ App Bar -------
                      SliverToBoxAdapter(
                        child: Container(
                          height: 115,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(BgAppBar.bgAppBar),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  'Inventory',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontFamily: 'MontserratBold',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: CartMenu(),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // ---- Filter ----
                      SliverToBoxAdapter(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: filterData.asMap().entries.map((entry) {
                              final int index = entry.key;
                              final Map<String, dynamic> item = entry.value;

                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedFilterIndex = index;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                  margin: const EdgeInsets.only(
                                      right: 16, bottom: 30),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(8),
                                    border: GradientBoxBorder(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          index == selectedFilterIndex
                                              ? Palette.blueFgradient
                                              : Palette.greyLight,
                                          index == selectedFilterIndex
                                              ? Palette.pinkFgradient
                                              : Palette.greyLight,
                                        ],
                                      ),
                                      width: 1,
                                    ),
                                  ),
                                  child: Text(
                                    item['filter'],
                                    style: GoogleFonts.rubik(
                                      textStyle: TextStyle(
                                        color: index == selectedFilterIndex
                                            ? Palette.hintText
                                            : Palette.greyLight,
                                        fontSize: 12,
                                        fontWeight: index == selectedFilterIndex
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      )),

                      // ------ Content  -------
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            bool isLastItem =
                                index == inventoryWithFilter.length - 1;

                            return InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.all(20),
                                          margin: EdgeInsets.only(
                                            bottom: isLastItem ? 80 : 24,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            border: GradientBoxBorder(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Palette.gradientInputDark,
                                                  Palette.gradientInputLight,
                                                ],
                                              ),
                                              width: 1,
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      showDialogDisclaimer(
                                                        context,
                                                        title:
                                                            'Disclaimer Notice',
                                                        description:
                                                            'We are not responsible for the distribution of links. Please ensure they are suitable for the intended recipient.',
                                                      );
                                                    },
                                                    child: Container(
                                                      width: 16,
                                                      height: 16,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: Palette.white,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'i',
                                                          style: TextStyle(
                                                            color:
                                                                Palette.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    FormatDate.format(
                                                      inventoryWithFilter[index]
                                                              .date ??
                                                          '',
                                                    ),
                                                    style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                        color:
                                                            Palette.greyLight,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 12),
                                              Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    child: Image.network(
                                                      inventoryWithFilter[index]
                                                              .image ??
                                                          '',
                                                      width: 84,
                                                      height: 84,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 13),
                                                  Expanded(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          inventoryWithFilter[
                                                                      index]
                                                                  .name_produk ??
                                                              '',
                                                          style: TextStyle(
                                                            color:
                                                                Palette.white,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                          maxLines: 2,
                                                          textAlign:
                                                              TextAlign.left,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                        const SizedBox(
                                                          height: 24,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '${inventoryWithFilter[index].sisa}/${inventoryWithFilter[index].total_kuota} Quota',
                                                              style: TextStyle(
                                                                color: Palette
                                                                    .white,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                showModalBottomSheet(
                                                                  context:
                                                                      context,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  isScrollControlled:
                                                                      true,
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return UserClaimModal(
                                                                      accountType:
                                                                          0,
                                                                      claims: inventoryWithFilter[
                                                                              index]
                                                                          .claim,
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                              child: Transform
                                                                  .rotate(
                                                                angle:
                                                                    0.7853981633974483,
                                                                child: Icon(
                                                                  Icons
                                                                      .arrow_upward_sharp,
                                                                  size: 15,
                                                                  color: Palette
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 13),
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                  vertical: 9,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Palette.white,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: () {
                                                          showDialogClaim(
                                                            context,
                                                            title:
                                                                'Ready To Take The Assessment Test?',
                                                            description:
                                                                "By click 'Claim' below, you'll be all set to start the assessment on the homepage afterward! or share the assessment test link with your loved ones.",
                                                            screen: 'inventory',
                                                            link:
                                                                inventoryWithFilter[
                                                                        index]
                                                                    .link,
                                                            idUser:
                                                                userData['id'],
                                                            userType: userData[
                                                                'corporate'],
                                                          );
                                                        },
                                                        child: Text(
                                                          inventoryWithFilter[
                                                                      index]
                                                                  .link ??
                                                              '',
                                                          style:
                                                              GoogleFonts.rubik(
                                                            textStyle:
                                                                TextStyle(
                                                              color: Palette
                                                                  .blackSoft,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ),
                                                          maxLines: 1,
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Clipboard.setData(
                                                            ClipboardData(
                                                          text:
                                                              "https://talentdna-dev.meteor.asia/main-screen?claim=${inventoryWithFilter[index].link}",
                                                        ));

                                                        showCustomSnackBar(
                                                          context,
                                                          'Link Has Been Copied',
                                                          'Disclaimer! We are not responsible for the dissemination of links. Please make sure they are appropriate for the intended recipient.',
                                                        );
                                                      },
                                                      child: Text(
                                                        'Copy',
                                                        style:
                                                            GoogleFonts.roboto(
                                                          textStyle: TextStyle(
                                                            color: Palette
                                                                .pinkFgradient,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          childCount: inventoryWithFilter.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
