// ignore_for_file: avoid_web_libraries_in_flutter
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/core/localization/translation_controller.dart';
import 'package:talent_dna/data/model/hardcode/your_life_changing_tools.dart';
import 'package:talent_dna/presentation/controller/main/home/article_controller.dart';
import 'package:talent_dna/presentation/controller/main/home/banner_controller.dart';
import 'package:talent_dna/presentation/view/dna/talent_dna_with_nav.dart';
import 'package:talent_dna/presentation/view/home/widgets/action_list.dart';
import 'package:talent_dna/presentation/view/home/widgets/article_detail.dart';
import 'package:talent_dna/presentation/view/home/widgets/banner_detail.dart';
import 'package:talent_dna/presentation/view/home/widgets/drive_list.dart';
import 'package:talent_dna/presentation/view/home/widgets/life_tools.dart';
import 'package:talent_dna/presentation/view/home/widgets/network_list.dart';
import 'package:talent_dna/presentation/view/home/widgets/welcome.dart';
import 'package:talent_dna/presentation/view/inventory/widgets/dialog_claim.dart';
import 'package:talent_dna/presentation/view/widget/cart.dart';
import 'package:talent_dna/presentation/view/widget/notif.dart';
import 'package:talent_dna/utils/format_date.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:html' as html;

class MyHomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final box = GetStorage();
  String? paramLinkClaim;
  String? paramEventId;
  String? paramType;

  ArticleController articleController = Get.find();
  BannerController bannerController = Get.find();
  final TranslationController translationController = Get.find();

  @override
  void initState() {
    super.initState();
    bannerController.getBanners();
    articleController.getArticles();
    getQueryParameter();
  }

  void getQueryParameter() {
    Uri uri = Uri.parse(html.window.location.href);
    paramLinkClaim = uri.queryParameters['claim'];
    paramEventId = uri.queryParameters['event-id'];
    paramType = uri.queryParameters['type'];
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var userData = box.read('userData');

    if (paramLinkClaim != null) {
      Future.delayed(
        Duration.zero,
        () => showDialogClaim(
          context,
          title: 'Ready To Take The Assessment Test?',
          description:
              "By click 'Claim' below, you'll be all set to start the assessment on the homepage afterward! or share the assessment test link with your loved ones.",
          screen: 'home',
          link: paramLinkClaim,
          idUser: userData['id'],
          userType: userData['corporate'], // 0 Personal 1 Corporate
          event_id: int.parse(paramEventId ?? '0'),
          type: int.parse(paramType ?? '0'),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: RefreshIndicator(
        onRefresh: () async {
          await bannerController.getBanners();
          await articleController.getArticles();
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
                      child: Image.asset(
                        LogoTalentDna.logoTalentDna,
                        width: 78,
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          CartMenu(),
                          SizedBox(width: 20),
                          NotifMenu(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: [
                      // Welcome
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: WelcomeTalent(),
                      ),
                      // ------- LIFE TOOLS --------
                      if (userData != null) const LifeTools(),

                      const SizedBox(height: 40),

                      // ---- Banner Slide
                      Obx(() {
                        var bannerList = bannerController.bannerList;
                        if (bannerList.isEmpty) {
                          return Shimmer.fromColors(
                            baseColor: Palette.greySkip.withOpacity(0.7),
                            highlightColor: Palette.greySkip.withOpacity(0.5),
                            direction: ShimmerDirection.ltr,
                            period: const Duration(milliseconds: 1000),
                            child: CarouselSlider(
                              options: CarouselOptions(
                                height: 450,
                                enlargeCenterPage: true,
                                enableInfiniteScroll: false,
                              ),
                              items: [1, 2, 3].map((item) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 4.0,
                                        vertical: 10,
                                      ),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: Image.network(
                                          'https://images.template.net/79064/mockup-01-1.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                          );
                        }
                        return CarouselSlider(
                          options: CarouselOptions(
                            height: 450,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                          ),
                          items: bannerList.map((item) {
                            return Builder(
                              builder: (BuildContext context) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            BannerDetailScreen(
                                          id: item.id,
                                          image: item.banner_image_path ?? '',
                                          title: item.title,
                                          description: item.description,
                                          url: item.url,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 4.0,
                                      vertical: 10,
                                    ),
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Image.network(
                                        item.banner_image_path ?? '',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        );
                      }),

                      const SizedBox(height: 56),
                      // ----- End Banner Slide

                      // ----- YOUR LIFE-CHANGING TOOLS! ------
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'home.life_changing.title'.tr,
                                style: TextStyle(
                                  color: Palette.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'home.life_changing.description'.tr,
                                style: TextStyle(
                                  color: Palette.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          // ---- Prsonal Card ----
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(FrameGradient.frameGradient),
                                fit: BoxFit.fill,
                              ),
                            ),
                            height: 268,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: cardDataListHome.map((data) {
                                      return Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            if (data.title == 'DRIVE') {
                                              Navigator.pushNamed(
                                                context,
                                                DriveDetailScreen.routeName,
                                              );
                                            } else if (data.title ==
                                                'NETWORK') {
                                              Navigator.pushNamed(
                                                context,
                                                NetworkDetailScreen.routeName,
                                              );
                                            } else {
                                              Navigator.pushNamed(
                                                context,
                                                ActionDetailScreen.routeName,
                                              );
                                            }
                                          },
                                          child: Container(
                                            height: width < 400 ? 230 : 200,
                                            margin: data.title == 'ACTION'
                                                ? const EdgeInsets.only(
                                                    right: 0,
                                                  )
                                                : const EdgeInsets.only(
                                                    right: 10,
                                                  ),
                                            padding: const EdgeInsets.all(15.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Palette.black
                                                      .withOpacity(0.2),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: const Offset(0, 3),
                                                ),
                                              ],
                                              image: DecorationImage(
                                                image: AssetImage(data.image),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        data.title,
                                                        style: TextStyle(
                                                          fontSize: width <= 400
                                                              ? 12
                                                              : 15,
                                                          color: Palette.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        data.description,
                                                        style: TextStyle(
                                                          fontSize: 11,
                                                          color: Palette.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 15),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Image.asset(
                                                    IconNext.iconNext,
                                                    width: 30,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // ---- End Personal Card ----
                          // ---- Button Take The Test -----
                          InkWell(
                            onTap: () {
                              Get.toNamed(TalentDnaWithNavScreen.routeName);
                            },
                            child: Container(
                              width: 245,
                              padding: const EdgeInsets.symmetric(vertical: 12),
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
                                  'TAKE THE TEST RIGHT NOW',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 14,
                                    fontFamily: 'MontserratBold',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // ---- End Button Take The Test -----
                        ],
                      ),
                      // ----- End YOUR LIFE-CHANGING TOOLS! ------

                      const SizedBox(height: 56),

                      // ----- Article -----
                      Obx(() {
                        var articleList = articleController.articleList;
                        if (articleList.isEmpty) {
                          return Shimmer.fromColors(
                            baseColor: Palette.greySkip.withOpacity(0.7),
                            highlightColor: Palette.greySkip.withOpacity(0.5),
                            direction: ShimmerDirection.ltr,
                            period: const Duration(milliseconds: 1000),
                            child: SizedBox(
                              height: 355,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  bool isLastItem =
                                      index == [1, 2, 3].length - 1;
                                  return Container(
                                    width: 280,
                                    margin: EdgeInsets.only(
                                      left: 20,
                                      right: isLastItem ? 20 : 0,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32),
                                      border: GradientBoxBorder(
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Palette.blueFgradient,
                                              Palette.pinkFgradient
                                            ]),
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(32.0),
                                            topRight: Radius.circular(32.0),
                                          ),
                                          child: Image.network(
                                            'https://images.template.net/79064/mockup-01-1.jpg',
                                            width: double.infinity,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        }

                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'WHY PERSONALITY TESTING IS USEFUL ?',
                                style: TextStyle(
                                  color: Palette.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            // ----- List article -----
                            SizedBox(
                              height: 355,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: articleList
                                    .where((article) =>
                                        article.status != 'Inactive')
                                    .length,
                                itemBuilder: (context, index) {
                                  var activeArticles = articleList
                                      .where((article) =>
                                          article.status != "Inactive")
                                      .toList();
                                  bool isLastItem =
                                      index == activeArticles.length - 1;
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ArticleDetailScreen(
                                            id: activeArticles[index].id,
                                            image: activeArticles[index]
                                                .article_image_path,
                                            title: activeArticles[index].title,
                                            description: activeArticles[index]
                                                .description,
                                            date: activeArticles[index]
                                                .created_at,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 280,
                                      margin: EdgeInsets.only(
                                          left: 20, right: isLastItem ? 20 : 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(32),
                                        border: GradientBoxBorder(
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Palette.blueFgradient,
                                                Palette.pinkFgradient
                                              ]),
                                          width: 1,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(32.0),
                                              topRight: Radius.circular(32.0),
                                            ),
                                            child: Image.network(
                                              activeArticles[index]
                                                      .article_image_path ??
                                                  '',
                                              width: double.infinity,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: SizedBox(
                                              height: 120,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      activeArticles[index]
                                                              .title ??
                                                          '',
                                                      style: TextStyle(
                                                        color: Palette.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      activeArticles[index]
                                                              .short_description ??
                                                          '',
                                                      style: TextStyle(
                                                        color: Palette.grey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 16),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      FormatDate.format(
                                                        activeArticles[index]
                                                                .created_at ??
                                                            '',
                                                      ),
                                                      style: TextStyle(
                                                        color:
                                                            Palette.greyLight,
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            // End List article
                          ],
                        );
                      }),
                      // ----- End Article -----

                      const SizedBox(height: 50),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
