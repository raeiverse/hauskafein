import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/magazine/baristastories/baristastoriespage/HeaderBaristaStoriesPage.dart';

import '../../../../../theme.dart';
import '../../../../pages/BackButtonWidget.dart';
import '../../../../pages/BottomNavbarWidget.dart';
import '../../../LinearBlurBackground.dart';
import '../../../MagazineCard.dart';

class BaristaStoriesPage extends StatelessWidget {
  const BaristaStoriesPage({super.key});

  @override
  Widget BottomNavBar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomNavbarWidget(
                    imageUrl: 'assets/images/icon_home.png',
                    title: 'Home',
                    pages: '/homepage',
                    isSelected: false,
                  ),
                  BottomNavbarWidget(
                    imageUrl: 'assets/images/icon_cafe.png',
                    title: 'Cafe',
                    pages: '/cafepage',
                    isSelected: false,
                  ),
                  BottomNavbarWidget(
                    imageUrl: 'assets/images/icon_news.png',
                    title: 'Magazine',
                    pages: '/magazinepage',
                    isSelected: true,
                  ),
                  BottomNavbarWidget(
                    imageUrl: 'assets/images/icon_recipe.png',
                    title: 'Recipe',
                    pages: '/recipepage',
                    isSelected: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          LinearBlurBackground(
            imageUrl: 'assets/images/images_upcomingevent_1.png',
            height: 4.95,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(),
                HeaderBaristaStoriesPage(),
                MagazineCard(
                  imageUrl: 'assets/images/news/images_content2.png',
                  title: 'Harga Kopi Melambung Tinggi',
                  desc:
                      'This container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.',
                  date: '17 Jan 2022',
                  nextPage: '/articlebaristastoriespage',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
