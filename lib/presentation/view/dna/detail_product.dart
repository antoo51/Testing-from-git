import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/main/cart/add_to_cart_controller.dart';
import 'package:talent_dna/presentation/controller/main/talent_dna/product_controller.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/widget/button_quantity.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:talent_dna/presentation/view/widget/cart.dart';
import 'package:talent_dna/utils/format_currency.dart';

class DetailProductScreen extends StatefulWidget {
  static const String routeName = '/detail/product';

  final String? id;

  const DetailProductScreen({Key? key, this.id}) : super(key: key);

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  final userData = GetStorage().read('userData');
  bool notif = true;
  int totalItems = 1;
  bool isLoading = false;

  final AddToCartController _addToCartController =
      Get.put(AddToCartController());
  ProductController productController = Get.find();

  @override
  void initState() {
    super.initState();
    productController.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: Center(
        child: Obx(() {
          var productList = productController.productList;
          var matchingItems = productList
              .where((product) =>
                  product.f_item_variant_id.toString() == widget.id)
              .toList();
          if (productList.isEmpty || matchingItems.isEmpty) {
            return const Text('');
          }
          var product = matchingItems.first;
          return Stack(
            children: [
              CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 35,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 50),
                              // ----- Card ------
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Palette.bgDarkMore,
                                  borderRadius: BorderRadius.circular(32),
                                  border: GradientBoxBorder(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Palette.blueFgradient,
                                        Palette.pinkFgradient,
                                      ],
                                    ),
                                    width: 1,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Palette.purpleSoft,
                                      spreadRadius: 3,
                                      blurRadius: 60,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(24.0),
                                          topRight: Radius.circular(24.0),
                                          bottomLeft: Radius.circular(24.0),
                                          bottomRight: Radius.circular(24.0),
                                        ),
                                        child: Image.network(
                                          product.f_image ??
                                              'https://images.template.net/79064/mockup-01-1.jpg',
                                          width: double.infinity,
                                          height: 300.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            product.f_variant_name ?? '',
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: width > 500 ? 20 : 18,
                                              fontFamily: 'MontserratBold',
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 32,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    CurrencyFormatter.format(
                                                      product.f_price ?? '',
                                                    ),
                                                    style: TextStyle(
                                                      color: Palette.white,
                                                      fontSize:
                                                          width > 500 ? 26 : 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 1),
                                                  Text(
                                                    '/Test',
                                                    style: TextStyle(
                                                      color: Palette.grey,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              QuantityButton(
                                                initialValue: totalItems,
                                                onChanged: (newQuantity) {
                                                  setState(() {
                                                    totalItems = newQuantity;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // ----- End Card ------
                              const SizedBox(height: 32),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Description',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontFamily: 'MontserratBold',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              // ---- Reder HTML -----
                              Align(
                                alignment: Alignment.centerLeft,
                                child: HtmlWidget(
                                  product.f_copywriting ?? '',
                                  textStyle: TextStyle(color: Palette.white),
                                  customStylesBuilder: (element) {
                                    return {'color': 'white'};
                                  },
                                ),
                              ),
                              const SizedBox(height: 150),
                            ],
                          ),
                        );
                      },
                      childCount: 1,
                    ),
                  ),
                ],
              ),

              // ---- App Bar
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: width,
                  constraints: const BoxConstraints(maxWidth: 504),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(color: Palette.bgDark),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          IconBack.iconBack,
                          width: 16,
                        ),
                      ),
                      const CartMenu(),
                    ],
                  ),
                ),
              ),

              // ----- Button Save ------
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
                        color: Palette.purpleSoft,
                        spreadRadius: 3,
                        blurRadius: 60,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: isLoading
                        ? null
                        : () {
                            setState(() {
                              isLoading = true;
                            });
                            if (userData != null) {
                              _addToCartController.addToCart(
                                idUser: userData['id'].toString(),
                                itemId: product.item_id ?? 0,
                                itemVariantId:
                                    product.f_item_variant_id.toString(),
                                qty: totalItems.toString(),
                                toOtherScreen: true,
                              );
                            } else {
                              Navigator.pushNamed(
                                context,
                                SignInScreen.routeName,
                              );
                            }
                            Future.delayed(const Duration(seconds: 4), () {
                              setState(() {
                                isLoading = false;
                              });
                            });
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
                              isLoading
                                  ? Palette.greySkip
                                  : Palette.blueFgradient,
                              isLoading
                                  ? Palette.greySkip
                                  : Palette.pinkFgradient
                            ]),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ADD TO CART',
                            style: TextStyle(
                              color: Palette.white,
                              fontSize: 18,
                              fontFamily: 'MontserratBold',
                            ),
                          ),
                          if (isLoading)
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizedBox(
                                height: 12,
                                width: 12,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Palette.white,
                                ),
                              ),
                            ),
                        ],
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
