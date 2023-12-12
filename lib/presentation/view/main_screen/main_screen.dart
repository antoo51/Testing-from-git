import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talent_dna/presentation/view/dna/talent_dna.dart';
import 'package:talent_dna/presentation/view/history/history.dart';
import 'package:talent_dna/presentation/view/home/home.dart';
import 'package:talent_dna/presentation/view/inventory/inventory.dart';
import 'package:talent_dna/presentation/view/inventory/inventory_corporate.dart';
import 'package:talent_dna/presentation/view/result/result.dart';
import 'package:talent_dna/presentation/view/widget/bottom_navbar.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = '/main-screen';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int currentIndex = 0;
  final userData = GetStorage().read('userData');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: IndexedStack(
          index: currentIndex,
          children: [
            const MyHomeScreen(),
            const ResultScreen(),
            const TalentDnaScreen(),
            const HistoryScreen(),
            userData != null && userData['corporate'] == 0
                ? const InventoryScreen()
                : const InventoryCorporateScreen(),
          ],
        ),
      ),
      bottomNavigationBar: MyConvexAppBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
