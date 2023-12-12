import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talent_dna/presentation/view/dna/talent_dna.dart';
import 'package:talent_dna/presentation/view/history/history.dart';
import 'package:talent_dna/presentation/view/home/home.dart';
import 'package:talent_dna/presentation/view/inventory/inventory.dart';
import 'package:talent_dna/presentation/view/inventory/inventory_corporate.dart';
import 'package:talent_dna/presentation/view/result/result.dart';
import 'package:talent_dna/presentation/view/widget/bottom_navbar.dart';

class TalentDnaWithNavScreen extends StatefulWidget {
  static const String routeName = '/products';

  const TalentDnaWithNavScreen({super.key});

  @override
  State<TalentDnaWithNavScreen> createState() => _TalentDnaWithNavScreen();
}

class _TalentDnaWithNavScreen extends State<TalentDnaWithNavScreen> {
  int currentIndex = 2;
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
