import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/data/model/history/history_models.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/presentation/controller/main/history/history_controller.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/history/history_detail.dart';
import 'package:talent_dna/presentation/view/widget/cart.dart';
import 'package:talent_dna/utils/format_currency.dart';
import 'package:talent_dna/utils/format_date.dart';

class HistoryScreen extends StatefulWidget {
  static const String routeName = '/history';

  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final box = GetStorage();
  final userData = GetStorage().read('userData');
  int selectedFilterIndex = 0;
  final GetHistoryController _getHistoryController = Get.find();

  List<Map<String, dynamic>> filterData = [
    {'filter': 'All History'},
    {'filter': '30 Days ago'},
    {'filter': '90 Days ago'},
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (userData != null) {
      _getHistoryController.getHistory(idUser: userData['id'].toString());
    }
  }

  List<HistoryModel> _filterHistoryData(List<HistoryModel> historyList) {
    DateTime currentDate = DateTime.now();

    return historyList.where((historyItem) {
      String listDate = historyItem.f_add_date ?? '';
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
            var historyList = _getHistoryController.historyList;
            List<HistoryModel> filteredHistoryList =
                _filterHistoryData(historyList);

            if (filteredHistoryList.isEmpty || isLogin == null) {
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
                              'Purchase History',
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              HistoryEmpty.historyEmpty,
                              width: 300,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Your don’t have history purchase. Start your Talent DNA journey and discover your talents!",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        borderRadius: const BorderRadius.all(
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
                                        borderRadius: const BorderRadius.all(
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
                      _getHistoryController.getHistory(
                          idUser: userData['id'].toString());
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
                                  'Purchase History',
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

                      // if (isLogin != null)
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

                      // ------ Content -------
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            bool isLastItem =
                                index == filteredHistoryList.length - 1;

                            // Search for the number of orders with the same f order_no
                            int orderCount = filteredHistoryList
                                .where((order) =>
                                    order.f_order_no ==
                                    filteredHistoryList[index].f_order_no)
                                .length;

                            // Determines whether this order is the first order with the same f_order_no
                            bool isFirstOrder = filteredHistoryList.indexWhere(
                                    (order) =>
                                        order.f_order_no ==
                                        filteredHistoryList[index]
                                            .f_order_no) ==
                                index;

                            // Calculates the total f_ amount for the same f_ order_no
                            double totalAmount = filteredHistoryList
                                .where((order) =>
                                    order.f_order_no ==
                                    filteredHistoryList[index].f_order_no)
                                .map((order) =>
                                    double.parse(order.f_amount ?? '0'))
                                .fold(0, (sum, amount) => sum + amount);

                            return isFirstOrder
                                ? InkWell(
                                    onTap: () {
                                      Get.toNamed(
                                        HistoryDetailScreen.routeName,
                                      );
                                      StorageService().store.write(
                                          'orderNumber',
                                          filteredHistoryList[index]
                                              .f_order_no);
                                    },
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
                                                padding:
                                                    const EdgeInsets.all(20),
                                                margin: EdgeInsets.only(
                                                  bottom: isLastItem ? 80 : 24,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                  border: GradientBoxBorder(
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      colors: [
                                                        Palette
                                                            .gradientInputDark,
                                                        Palette
                                                            .gradientInputLight,
                                                      ],
                                                    ),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                FormatDate.formatDateTime(
                                                                    filteredHistoryList[index]
                                                                            .f_add_date ??
                                                                        ''),
                                                                style:
                                                                    GoogleFonts
                                                                        .roboto(
                                                                  textStyle:
                                                                      TextStyle(
                                                                    color: Palette
                                                                        .greyLight,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 5),
                                                              Text(
                                                                filteredHistoryList[
                                                                            index]
                                                                        .f_order_no ??
                                                                    '',
                                                                style:
                                                                    GoogleFonts
                                                                        .roboto(
                                                                  textStyle:
                                                                      TextStyle(
                                                                    color: Palette
                                                                        .blueGrey,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            horizontal: 12,
                                                            vertical: 6,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              String status =
                                                                  filteredHistoryList[
                                                                              index]
                                                                          .f_status ??
                                                                      '';
                                                              switch (status) {
                                                                case 'registered':
                                                                  return Palette
                                                                      .registeredLabel;
                                                                case 'settlement':
                                                                  return Palette
                                                                      .settlementLabel;
                                                                case 'pending':
                                                                  return Palette
                                                                      .pendingLabel;
                                                                case 'expired':
                                                                  return Palette
                                                                      .expiredLabel;
                                                                case 'invoice':
                                                                  return Palette
                                                                      .greySkip;
                                                                default:
                                                                  return Colors
                                                                      .transparent;
                                                              }
                                                            }(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30),
                                                          ),
                                                          child: Text(
                                                            filteredHistoryList[index]
                                                                            .f_status !=
                                                                        null &&
                                                                    filteredHistoryList[
                                                                            index]
                                                                        .f_status!
                                                                        .isNotEmpty
                                                                ? (filteredHistoryList[
                                                                            index]
                                                                        .f_status![
                                                                            0]
                                                                        .toUpperCase() +
                                                                    filteredHistoryList[
                                                                            index]
                                                                        .f_status!
                                                                        .substring(
                                                                            1))
                                                                : '',
                                                            style: TextStyle(
                                                              color: () {
                                                                String status =
                                                                    filteredHistoryList[index]
                                                                            .f_status ??
                                                                        '';
                                                                switch (
                                                                    status) {
                                                                  case 'registered':
                                                                    return Palette
                                                                        .registeredText;
                                                                  case 'settlement':
                                                                    return Palette
                                                                        .successText;
                                                                  case 'pending':
                                                                    return Palette
                                                                        .pendingText;
                                                                  case 'expired':
                                                                    return Palette
                                                                        .expiredText;
                                                                  case 'invoice':
                                                                    return Palette
                                                                        .black;
                                                                  default:
                                                                    return Palette
                                                                        .black;
                                                                }
                                                              }(),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(height: 12),
                                                    Row(
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          child: Image.asset(
                                                            BannerOne.bannerOne,
                                                            width: 84,
                                                            height: 84,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 13),
                                                        Expanded(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                filteredHistoryList[
                                                                            index]
                                                                        .f_produk_desc ??
                                                                    '',
                                                                style:
                                                                    TextStyle(
                                                                  color: Palette
                                                                      .white,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                                maxLines: 1,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                              const SizedBox(
                                                                height: 8,
                                                              ),
                                                              Text(
                                                                '${filteredHistoryList[index].f_qty}x Purchase',
                                                                style:
                                                                    GoogleFonts
                                                                        .rubik(
                                                                  textStyle:
                                                                      TextStyle(
                                                                    color: Palette
                                                                        .white,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                              const SizedBox(
                                                                  height: 12),
                                                              Text(
                                                                CurrencyFormatter.format(
                                                                    filteredHistoryList[index]
                                                                            .f_price ??
                                                                        ''),
                                                                style:
                                                                    GoogleFonts
                                                                        .roboto(
                                                                  textStyle:
                                                                      TextStyle(
                                                                    color: Palette
                                                                        .white,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    if (orderCount > 1)
                                                      const SizedBox(
                                                          height: 12),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          orderCount > 1
                                                              ? '+${orderCount - 1} more'
                                                              : '',
                                                          style: TextStyle(
                                                            color: Palette
                                                                .pinkFgradient,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    if (orderCount > 1)
                                                      const SizedBox(
                                                          height: 12),
                                                    Divider(
                                                      color: Palette.devider,
                                                      thickness: 0.5,
                                                    ),
                                                    const SizedBox(height: 12),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Total',
                                                          style: GoogleFonts
                                                              .roboto(
                                                            textStyle:
                                                                TextStyle(
                                                              color:
                                                                  Palette.white,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          CurrencyFormatter
                                                              .format(totalAmount
                                                                  .toString()),
                                                          style: GoogleFonts
                                                              .roboto(
                                                            textStyle:
                                                                TextStyle(
                                                              color:
                                                                  Palette.white,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
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
                                        ],
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink();
                          },
                          childCount: filteredHistoryList.length,
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
