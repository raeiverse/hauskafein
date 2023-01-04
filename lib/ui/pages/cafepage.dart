import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BottomNavbarWidget.dart';
import 'package:hauskafein/ui/widget/cafe/FilterBarCafe.dart';
import 'package:hauskafein/ui/widget/cafe/HeaderCafe.dart';
import 'package:hauskafein/ui/widget/cafe/InfoCardCafe.dart';

class CafePage extends StatelessWidget {
  const CafePage({super.key});

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
                      isSelected: true,
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
          Stack(
            children: [
              Image.asset(
                'assets/images/images_upcomingevent_1.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.54,
                fit: BoxFit.cover,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.54,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderCafe(),
                InfoCardCafe(
                  imageUrl: 'assets/images/cafe/images_popular_1.png',
                  title: 'Rivarno Kopi',
                  desc: 'Coffee, non coffee, non milk, tea based',
                  rating: 4.8,
                  distance: 6,
                  open: '11.00',
                  closed: '23.00',
                ),
                InfoCardCafe(
                  imageUrl: 'assets/images/cafe/images_popular_1.png',
                  title: 'Rivarno Kopi',
                  desc: 'Coffee, non coffee, non milk, tea based',
                  rating: 4.8,
                  distance: 6,
                  open: '11.00',
                  closed: '23.00',
                ),
                InfoCardCafe(
                  imageUrl: 'assets/images/cafe/images_popular_1.png',
                  title: 'Rivarno Kopi',
                  desc: 'Coffee, non coffee, non milk, tea based',
                  rating: 4.8,
                  distance: 6,
                  open: '11.00',
                  closed: '23.00',
                ),
                InfoCardCafe(
                  imageUrl: 'assets/images/cafe/images_popular_1.png',
                  title: 'Rivarno Kopi',
                  desc: 'Coffee, non coffee, non milk, tea based',
                  rating: 4.8,
                  distance: 6,
                  open: '11.00',
                  closed: '23.00',
                ),
                SizedBox(height: 82),
              ],
            ),
          ),
          FilterBarCafe(),
          BottomNavBar(),
        ],
      ),
    );
  }
}
