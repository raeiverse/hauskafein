import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';
import 'package:hauskafein/ui/widget/news/newspage/CardNewsPage.dart';
import 'package:hauskafein/ui/widget/news/newspage/HeaderNewsPage.dart';

import '../../../pages/BottomNavbarWidget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

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
          // BACKGROUND
          Stack(
            children: [
              Opacity(
                opacity: 0.8,
                child: Image.asset(
                  'assets/images/news/images_background.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4.95,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.95,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      whiteColor.withOpacity(0),
                      whiteColor,
                    ],
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Neutral10.withOpacity(0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(),
                HeaderNewsPage(),
                CardNewsPage(
                  imageUrl: 'assets/images/news/images_content1.png',
                  title: 'Harga Kopi Melambung Tinggi',
                  desc:
                      'This container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.',
                  date: '17 Jan 2022',
                ),
                CardNewsPage(
                  imageUrl: 'assets/images/news/images_content2.png',
                  title: 'Harga Kopi Melambung Tinggi',
                  desc:
                      'This container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.',
                  date: '17 Jan 2022',
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 7.2),
              ],
            ),
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
