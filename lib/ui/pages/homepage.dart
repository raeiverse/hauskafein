import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BottomNavbarWidget.dart';
import 'package:hauskafein/ui/widget/event/event_homepage.dart';
import 'package:hauskafein/ui/widget/homepage/BottomSearchRecNavBar.dart';
import 'package:hauskafein/ui/widget/homepage/today_homepage.dart';

import '../widget/news/NewsHomepage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
                      isSelected: true,
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
                      isSelected: false,
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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Today_Homepage(),
                Event_Homepage(),
                NewsHomepage(),
                SizedBox(height: MediaQuery.of(context).size.height / 7.2),
              ],
            ),
          ),
          SearchRecNavBar(
            baseColor: orangeColor,
            textColor: Neutral10,
            baseSColor: transparentColor,
            textSColor: Neutral90,
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
