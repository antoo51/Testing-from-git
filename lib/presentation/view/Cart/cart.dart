// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/main/cart/add_to_cart_controller.dart';
import 'package:talent_dna/presentation/controller/main/cart/cart_controller.dart';
import 'package:talent_dna/presentation/controller/main/cart/delete_cart_controller.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/checkout/checkout.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';
import 'package:talent_dna/presentation/view/widget/button_quantity.dart';
import 'package:talent_dna/utils/format_currency.dart';

class CartScreen extends StatefulWidget {
  static const String routeName = '/charts';

  const CartScreen({
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final box = GetStorage();
  final userData = GetStorage().read('userData');
  final AddToCartController _addToCartController =
      Get.put(AddToCartController());
  final DeleteCartController _deleteCartController =
      Get.put(DeleteCartController());
  int totalItems = 1;

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
            return Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            ChartEmpty.chartEmpty,
                            width: 300,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Your cart is empty. Purchase the Talent DNA to uncover your talents and explore matching careers",
                            style: TextStyle(
                              color: Palette.greySkip,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      if (isLogin == false || isLogin == null)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
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
                        ),
                    ],
                  ),
                ),
                // ---- Button Back Notification ----
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
                        Get.toNamed(MainScreen.routeName);
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            IconBack.iconBack,
                            width: 16,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            'Cart',
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
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        bool isFirstItem = index == 0;
                        bool isLastItem = index == cartList.length - 1;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
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
                                padding: EdgeInsets.only(
                                  top: isFirstItem ? 75 : 30,
                                  bottom: isLastItem ? 130 : 0,
                                ),
                                child: Column(
                                  children: [
                                    // Image and Text
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.asset(
                                            BannerOne.bannerOne,
                                            width: 84,
                                            height: 84,
                                            fit: BoxFit.cover,
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
                                                // cartData['title'],
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
                                            const SizedBox(height: 15),
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
                                    const SizedBox(height: 25),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // ----- DELETE CART ------
                                        InkWell(
                                          onTap: () {
                                            _deleteCartController.deleteCart(
                                              idUser: userData['id'].toString(),
                                              itemVariantId: cartList[index]
                                                  .f_item_variant_id
                                                  .toString(),
                                              toOtherScreen: false,
                                            );
                                            Future.delayed(
                                                const Duration(seconds: 2), () {
                                              if (userData != null) {
                                                cartController.getCarts(
                                                  f_user_id: userData['id'],
                                                );
                                              }
                                            });
                                          },
                                          child: SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: Image.asset(
                                              IconDelete.iconDelete,
                                            ),
                                          ),
                                        ),
                                        // ----- QTY CART ------
                                        QuantityButton(
                                          initialValue:
                                              cartList[index].f_qty ?? 0,
                                          onChanged: (newQuantity) {
                                            // --- POST/Update Data Per Item ---
                                            _addToCartController.addToCart(
                                              idUser: userData['id'].toString(),
                                              itemId:
                                                  cartList[index].item_id ?? 0,
                                              itemVariantId: cartList[index]
                                                  .f_item_variant_id
                                                  .toString(),
                                              qty: newQuantity.toString(),
                                              toOtherScreen: false,
                                            );
                                            Future.delayed(
                                                const Duration(seconds: 2), () {
                                              if (userData != null) {
                                                cartController.getCarts(
                                                  f_user_id: userData['id'],
                                                );
                                              }
                                            });
                                            setState(() {
                                              totalItems = newQuantity;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 30),
                                    Divider(
                                      color: Palette.devider,
                                      thickness: 0.5,
                                    )
                                  ],
                                ),
                              ),
                              // const SizedBox(height: 30),
                            ],
                          ),
                        );
                      },
                      childCount: cartList.length,
                    ),
                  ),
                ],
              ),

              // ---- Button Back Notification ----
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 504),
                  width: width,
                  padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
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
                      Get.toNamed(MainScreen.routeName);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          IconBack.iconBack,
                          width: 16,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Cart',
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
                    top: 20,
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
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, CheckoutScreen.routeName);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 17),
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
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              CurrencyFormatter.format(
                                '$totalPrice',
                              ),
                              style: TextStyle(
                                color: Palette.white,
                                fontSize: width < 365 ? 15 : 18,
                                fontFamily: 'MontserratBold',
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'CHECKOUT',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: width < 365 ? 15 : 18,
                                    fontFamily: 'MontserratBold',
                                  ),
                                ),
                                const SizedBox(width: 18),
                                SizedBox(
                                  width: 20,
                                  child: Image.asset(ChevronRight.chevronRight),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
