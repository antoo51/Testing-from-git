import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/main/cart/cart_controller.dart';
import 'package:talent_dna/presentation/view/Cart/cart.dart';

class CartMenu extends StatefulWidget {
  const CartMenu({super.key});

  @override
  State<CartMenu> createState() => _CartMenuState();
}

class _CartMenuState extends State<CartMenu> {
  final userData = GetStorage().read('userData');

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
    return Obx(() {
      var cartList = cartController.cartList;
      if (cartList.isEmpty) {
        return Stack(
          children: [
            IconButton(
              icon: Image.asset(
                IconChart.iconChart,
                width: 22,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  CartScreen.routeName,
                );
              },
            ),
            Positioned(
              top: 5.5,
              right: 4,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    CartScreen.routeName,
                  );
                },
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Palette.redNoticeSoft, Palette.redNotice],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Palette.white,
                        fontSize: 9,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }
      return Stack(
        children: [
          IconButton(
            icon: Image.asset(
              IconChart.iconChart,
              width: 22,
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                CartScreen.routeName,
              );
            },
          ),
          Positioned(
            top: 5.5,
            right: 4,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  CartScreen.routeName,
                );
              },
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Palette.redNoticeSoft, Palette.redNotice],
                  ),
                ),
                child: Center(
                  child: Text(
                    cartList.length.toString(),
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 9,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
