import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/main/history/history_controller.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/history/history.dart';
import 'package:talent_dna/utils/format_currency.dart';
import 'package:talent_dna/utils/format_date.dart';

class HistoryDetailScreen extends StatefulWidget {
  static const String routeName = '/history/detail';

  const HistoryDetailScreen({super.key});

  @override
  State<HistoryDetailScreen> createState() => _HistoryDetailScreenState();
}

class _HistoryDetailScreenState extends State<HistoryDetailScreen> {
  final box = GetStorage();
  final userData = GetStorage().read('userData');
  final orderNumbers = GetStorage().read('orderNumber');
  final GetHistoryController _getHistoryController = Get.find();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (userData != null && orderNumbers != null) {
      _getHistoryController.getHistory(idUser: userData['id'].toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final isLogin = box.read('isLogin');

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: Center(
        child: Obx(
          () {
            var historyList = _getHistoryController.historyList;
            var matchingItems = historyList
                .where((item) => item.f_order_no == orderNumbers)
                .toList();

            double totalAmount = matchingItems
                .map((order) => double.parse(order.f_amount ?? '0'))
                .fold(0, (sum, amount) => sum + amount);

            var paymentType = matchingItems
                .where((item) =>
                    item.f_payment_type != null &&
                    item.f_payment_type!.isNotEmpty)
                .toList();

            if (historyList.isEmpty ||
                isLogin == null ||
                matchingItems.isEmpty) {
              return Column(
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
                                      colors: [Palette.white, Palette.white]),
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
                                    const BorderRadius.all(Radius.circular(50)),
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
              );
            }
            return Stack(
              children: [
                CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 80),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Text(
                                    orderNumbers,
                                    style: TextStyle(
                                      color: Palette.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Text(
                                  'View Receipt',
                                  style: TextStyle(
                                    color: Palette.pinkFgradient,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Purchase Date',
                                    style: TextStyle(
                                      color: Palette.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Text(
                                  FormatDate.formatDateTimeSortMonth(
                                    matchingItems[0].f_add_date ?? '',
                                  ),
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Purchase Status',
                                    style: TextStyle(
                                      color: Palette.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Text(
                                  matchingItems[0].f_status?.toUpperCase() ??
                                      '',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 16,
                                    fontFamily: 'MontserratBold',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 32),
                            Divider(
                              color: Palette.devider,
                              thickness: 0.5,
                            ),
                            const SizedBox(height: 32),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Product Checkout',
                                style: TextStyle(
                                  color: Palette.white,
                                  fontSize: 18,
                                  fontFamily: 'MontserratBold',
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            const SizedBox(height: 32),
                          ],
                        ),
                      ),
                    ),

                    // ------ Content -------
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          bool isLastItem = index == matchingItems.length - 1;

                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Container(
                              margin: EdgeInsets.only(
                                bottom: isLastItem ? 32 : 40,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(24),
                                            topLeft: Radius.circular(24),
                                            topRight: Radius.circular(12),
                                            bottomRight: Radius.circular(12),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Palette.bgDarkMore
                                                  .withOpacity(0.5),
                                              offset: const Offset(-5, 0),
                                              blurRadius: 4,
                                            ),
                                          ],
                                        ),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(24),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12),
                                          ),
                                          child: Image.asset(
                                            BannerOne.bannerOne,
                                            width: 84,
                                            height: 84,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 13),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              matchingItems[index]
                                                      .f_produk_desc ??
                                                  '',
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 16,
                                                fontFamily: 'MontserratBold',
                                              ),
                                              maxLines: 1,
                                              textAlign: TextAlign.left,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              '${matchingItems[index].f_qty}x Purchase',
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                  color: Palette.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              CurrencyFormatter.format(
                                                matchingItems[index].f_price ??
                                                    '',
                                              ),
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                  color: Palette.white,
                                                  fontSize: 15,
                                                  fontFamily: 'MontserratBold',
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
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
                        childCount: matchingItems.length,
                      ),
                    ),

                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Divider(
                              color: Palette.devider,
                              thickness: 0.5,
                            ),
                            const SizedBox(height: 32),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Price Detail',
                                style: TextStyle(
                                  color: Palette.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Payment Method',
                                    style: TextStyle(
                                      color: Palette.btnSwitch,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Text(
                                  paymentType.isNotEmpty
                                      ? paymentType[0]
                                          .f_payment_type!
                                          .replaceAll('_', ' ')
                                          .toLowerCase()
                                          .split(' ')
                                          .map((word) =>
                                              word[0].toUpperCase() +
                                              word.substring(1))
                                          .join(' ')
                                      : '',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Subtotal (${matchingItems.length} Item)',
                                    style: TextStyle(
                                      color: Palette.btnSwitch,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Text(
                                  CurrencyFormatter.format(
                                    totalAmount.toString(),
                                  ),
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Divider(
                              color: Palette.devider,
                              thickness: 0.5,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Total',
                                    style: TextStyle(
                                      color: Palette.btnSwitch,
                                      fontSize: 16,
                                      fontFamily: 'MontserratBold',
                                    ),
                                  ),
                                ),
                                Text(
                                  CurrencyFormatter.format(
                                    totalAmount.toString(),
                                  ),
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 16,
                                    fontFamily: 'MontserratBold',
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                            const SizedBox(height: 60),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // ---- app bar ----
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: width,
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 15,
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Palette.bgDark,
                      boxShadow: [
                        BoxShadow(
                          color: Palette.purpleSoft.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 50,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(HistoryScreen.routeName);
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            IconBack.iconBack,
                            width: 16,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            'Purchase Detail',
                            style: TextStyle(
                              color: Palette.white,
                              fontFamily: 'MontserratBold',
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
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
