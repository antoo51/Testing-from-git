import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get/get.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class BannerDetailScreen extends StatefulWidget {
  static const String routeName = '/detail/banner';

  final int? id;
  final String image;
  final String? title;
  final String? description;
  final String? url;

  const BannerDetailScreen(
      {Key? key,
      this.id,
      this.title,
      this.description,
      this.url,
      required this.image})
      : super(key: key);

  @override
  State<BannerDetailScreen> createState() => _BannerDetailScreenState();
}

class _BannerDetailScreenState extends State<BannerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // int? id = widget.id;
    String image = widget.image;
    String? title = widget.title;
    String? description = widget.description;
    String? url = widget.url;

    return Scaffold(
      backgroundColor: Palette.bgDark,
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            image,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 32),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '$title',
                                  style: TextStyle(
                                    color: Palette.white,
                                    fontSize: 24,
                                    fontFamily: 'MontserratBold',
                                  ),
                                ),
                                const SizedBox(height: 19),
                                InkWell(
                                  onTap: () async {
                                    var uri = Uri.parse(
                                      url ?? '',
                                    );
                                    if (await canLaunchUrl(uri)) {
                                      launchUrl(uri);
                                    }
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '$url',
                                        style: TextStyle(
                                          color: Palette.link,
                                          fontSize: 14,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Image.asset(
                                        IconOpenLink.iconOpenLink,
                                        width: 16,
                                        height: 16,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 24),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: HtmlWidget(
                                    description ?? '',
                                    textStyle: TextStyle(color: Palette.white),
                                    customStylesBuilder: (element) {
                                      return {'color': 'white'};
                                    },
                                  ),
                                ),
                                const SizedBox(height: 100),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: 1,
                ),
              )
            ],
          ),

          // ---- app bar ----
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: width,
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
              decoration: BoxDecoration(
                color: Palette.bgDark,
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
                      'Detail',
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
      ),
    );
  }
}
