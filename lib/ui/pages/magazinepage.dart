import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BottomNavbarWidget.dart';
import 'package:hauskafein/ui/widget/event/event_homepage.dart';
import 'package:hauskafein/ui/widget/magazine/BaristaStoriesMagazine.dart';
import 'package:hauskafein/ui/widget/magazine/TeamReviewMagazine.dart';

import '../widget/news/NewsHomepage.dart';

class MagazinePage extends StatelessWidget {
  const MagazinePage({super.key});

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/magazine/images_magazineBackground.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.95,
                fit: BoxFit.cover,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.95,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      transparentColor,
                      whiteColor,
                    ],
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                TeamReviewMagazine(),
                BaristaStoriesMagazine(),
                Event_Homepage(),
                NewsHomepage(),
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
