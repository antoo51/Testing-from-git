import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:talent_dna/core/config/app_route.dart';
import 'package:talent_dna/core/constants/theme.dart';
import 'package:talent_dna/core/localization/translation_controller.dart';
import 'package:talent_dna/core/localization/translation_service.dart';
import 'package:talent_dna/data/services/client.dart';
import 'package:talent_dna/data/services/storage_service.dart';
import 'package:talent_dna/firebase_options.dart';
import 'package:talent_dna/presentation/view/splash/splash.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");
  await ClientDio.init();
  await GetStorage.init();
  await initServices();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setPathUrlStrategy();

  final runnableApp = _buildRunnableApp(
    webAppWidth: 504,
    app: MyApp(),
  );

  runApp(runnableApp);
}

initServices() async {
  await Get.putAsync(() => StorageService().init());
}

Widget _buildRunnableApp({
  required double webAppWidth,
  required Widget app,
}) {
  return Center(
    child: ClipRect(
      child: SizedBox(
        width: webAppWidth,
        child: app,
      ),
    ),
  );
}

final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
    GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final TranslationController translationController =
      Get.put(TranslationController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Talent DNA',
      scaffoldMessengerKey: _scaffoldKey,
      debugShowCheckedModeBanner: false,
      locale: Locale(translationController.currentLocale.value),
      translations: TranslationService(),
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: SplashScreen.routeName,
      getPages: Routes.get(),
      theme: ThemeTalentDna.themeData,
    );
  }
}
