import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/controller/main/notif/notif_controller.dart';
import 'package:talent_dna/presentation/view/notif/notif.dart';

class NotifMenu extends StatefulWidget {
  const NotifMenu({super.key});

  @override
  State<NotifMenu> createState() => _NotifMenuState();
}

class _NotifMenuState extends State<NotifMenu> {
  final userData = GetStorage().read('userData');

  final NotifController _notifController = Get.find();

  bool notif = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (userData != null) {
      _notifController.getNotif();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var notifList = _notifController.notifList;

      if (notifList.isEmpty) {
        return Stack(
          alignment: Alignment.topRight,
          children: [
            IconButton(
              icon: Image.asset(
                IconNotification.iconNotification,
                width: 16,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  NotifScreen.routeName,
                );
              },
            ),
          ],
        );
      }
      return Stack(
        alignment: Alignment.topRight,
        children: [
          IconButton(
            icon: Image.asset(
              IconNotification.iconNotification,
              width: 16,
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                NotifScreen.routeName,
              );
            },
          ),
          if (notif)
            Positioned(
              top: 8,
              right: 15.5,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    NotifScreen.routeName,
                  );
                },
                child: Container(
                  width: 7.5,
                  height: 7.5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Palette.redNoticeSoft, Palette.redNotice],
                    ), // Warna bulatan
                  ),
                ),
              ),
            ),
        ],
      );
    });
  }
}
