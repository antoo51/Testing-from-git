import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/main/talent_dna/product_controller.dart';
import 'package:talent_dna/presentation/view/dna/detail_product.dart';
import 'package:talent_dna/presentation/view/widget/cart.dart';
import 'package:talent_dna/utils/format_currency.dart';

class TalentDnaScreen extends StatefulWidget {
  static const String routeName = '/product';

  const TalentDnaScreen({Key? key}) : super(key: key);

  @override
  State<TalentDnaScreen> createState() => _TalentDnaScreenState();
}

class _TalentDnaScreenState extends State<TalentDnaScreen> {
  double sliderValue = 5;
  bool notif = true;

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
      body: Obx(() {
        var productList = productController.productList;
        return RefreshIndicator(
          onRefresh: () async {
            await productController.getProducts();
          },
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              // App Bar
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
                          'Talent DNA',
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

              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: width > 500 ? 350 : 310,
                    mainAxisExtent: width > 500 ? 330 : 330,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      if (productList.isEmpty) {
                        return const SizedBox.shrink();
                      }
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailProductScreen(
                                id: productList[index]
                                    .f_item_variant_id
                                    .toString(),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: 182,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
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
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    productList[index].f_image ??
                                        'https://images.template.net/79064/mockup-01-1.jpg',
                                    width: double.infinity,
                                    height: 166.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 2,
                                  bottom: 15,
                                  left: 20,
                                  right: 20,
                                ),
                                height: 100,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        productList[index].f_variant_name ?? '',
                                        style: TextStyle(
                                          color: Palette.white,
                                          fontSize: width > 500 ? 18 : 14,
                                          fontFamily: 'MontserratBold',
                                        ),
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: CurrencyFormatter.format(
                                                productList[index].f_price ??
                                                    '',
                                              ),
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: width > 500 ? 14 : 12,
                                                fontFamily: 'MontserratBold',
                                              ),
                                            ),
                                            TextSpan(
                                              text: '/Test',
                                              style: TextStyle(
                                                color: Palette.grey,
                                                fontSize: width > 500 ? 14 : 12,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: productList.length,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
