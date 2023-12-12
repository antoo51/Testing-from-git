import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/main/cart/cart_controller.dart';
import 'package:talent_dna/presentation/controller/main/checkout/checkout_controller.dart';
import 'package:talent_dna/presentation/view/Cart/cart.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/checkout/widget/dialog.dart';
import 'package:talent_dna/utils/format_currency.dart';
import 'package:get/get.dart';
// import 'package:talent_dna/presentation/view/transaction/transaction.dart';

class CheckoutScreen extends StatefulWidget {
  static const String routeName = '/checkout';

  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final box = GetStorage();
  final userData = GetStorage().read('userData');
  final CheckoutController _checkoutController = Get.put(CheckoutController());
  CartController cartController = Get.find();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (userData != null) {
      cartController.getCarts(f_user_id: userData['id']);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final isLogin = box.read('isLogin');

    return Scaffold(
        backgroundColor: Palette.bgDark,
        body: Center(
          child: Obx(() {
            var cartList = cartController.cartList;
            if (cartList.isEmpty) {
              return Container();
            }
            // Calculate total price
            double totalPrice = cartList.fold(0, (total, item) {
              String? qty = item.f_qty?.toString() ?? '0';
              String? priceStr = item.f_price ?? '0.0';
              double price = double.tryParse(priceStr) ?? 0.0;
              int quantity = int.tryParse(qty) ?? 0;
              return total + (quantity * price);
            });
            return Stack(
              children: [
                CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: <Widget>[
                    // ------ Content -------
                    SliverToBoxAdapter(
                      child: Container(
                        margin: const EdgeInsets.only(top: 80, bottom: 30),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Product Checkout',
                            style: TextStyle(
                              color: Palette.white,
                              fontFamily: 'MontserratBold',
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),

                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Column(
                            children: [
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

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 20,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
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
                                            borderRadius:
                                                const BorderRadius.only(
                                              bottomLeft: Radius.circular(24),
                                              topLeft: Radius.circular(24),
                                              topRight: Radius.circular(12),
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
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: width < 399 ? 150 : 230,
                                              child: Text(
                                                cartList[index]
                                                        .f_variant_name ??
                                                    '',
                                                style: TextStyle(
                                                  color: Palette.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                maxLines: 1,
                                                textAlign: TextAlign.left,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              '${cartList[index].f_qty}x Purchase',
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Palette.grey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 12),
                                            Text(
                                              CurrencyFormatter.format(
                                                cartList[index].f_price ?? '',
                                              ),
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                  color: Palette.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              maxLines: 1,
                                              textAlign: TextAlign.left,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        childCount: cartList.length,
                      ),
                    ),

                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: Divider(
                              color: Palette.deviderDark,
                              thickness: 8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 16,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Price Detail',
                                style: TextStyle(
                                  color: Palette.white,
                                  fontFamily: 'MontserratBold',
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Subtotal (${cartList.length} Item)',
                                  style: TextStyle(
                                    color: Palette.greyLight,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  CurrencyFormatter.format('$totalPrice'),
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //     left: 20,
                          //     right: 20,
                          //     bottom: 16,
                          //   ),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Text(
                          //         'Admin Fee',
                          //         style: TextStyle(
                          //           color: Palette.greyLight,
                          //           fontSize: 16,
                          //           fontWeight: FontWeight.w400,
                          //         ),
                          //       ),
                          //       Text(
                          //         'Rp 0',
                          //         style: TextStyle(
                          //           color: Palette.white,
                          //           fontSize: 16,
                          //           fontWeight: FontWeight.w400,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(
                              color: Palette.devider,
                              thickness: 0.5,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                    color: Palette.greyLight,
                                    fontSize: 16,
                                    fontFamily: 'MontserratBold',
                                  ),
                                ),
                                Text(
                                  CurrencyFormatter.format('$totalPrice'),
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 16,
                                    fontFamily: 'MontserratBold',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 250),
                        ],
                      ),
                    ),
                  ],
                ),

                // ---- Button Back ----
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 504),
                    width: width,
                    padding:
                        const EdgeInsets.only(left: 20, top: 15, bottom: 15),
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
                        Get.toNamed(CartScreen.routeName);
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            IconBack.iconBack,
                            width: 16,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            'Checkout',
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

                // ------ Button Checkout ----
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 504),
                    width: width,
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 25,
                      left: 30,
                      right: 30,
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
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            if (userData != null) {
                              _checkoutController.checkout(
                                idUser: userData['id'].toString(),
                                email: userData['email'],
                                phone: userData['phoneNumber'],
                                name: userData['fullName'],
                              );
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 17),
                            width: width,
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
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                child: Text(
                                  'SELECT PAYMENT',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: width < 365 ? 15 : 18,
                                    fontFamily: 'MontserratBold',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        if (userData != null &&
                            userData['corporate'] != null &&
                            userData['corporate'] != '' &&
                            userData['corporate'] == 1)
                          InkWell(
                            onTap: () {
                              if (userData != null) {
                                showDialogInvoice(
                                  context,
                                  title:
                                      'Are You Sure You Want to Request The Invoice?',
                                  description:
                                      'With a payment invoice request, it will be included in the invoice within a specific timeframe.',
                                );
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 17),
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                border: Border.all(
                                  color: Palette.white,
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                  child: Text(
                                    'REQUEST INVOICE',
                                    style: TextStyle(
                                      color: Palette.white,
                                      fontSize: width < 365 ? 15 : 18,
                                      fontFamily: 'MontserratBold',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ));
  }
}
