import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/HeaderCafeProfile.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/TitleCafeProfile.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/overviewcafe/MainOverview.dart';

class MainCafeProfile extends StatelessWidget {
  const MainCafeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            width: double.infinity,
            height: 297,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cafe/images_popular_1.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Neutral10.withOpacity(0.2),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                HeaderCafeProfile(),
                TitleCafeProfile(
                  title: 'Rivarno Kopi',
                  rating: 4.8,
                  price: '\$\$',
                ),
                MainOverview(),
              ],
            ),
          ),
          BackButtonWidget(),
        ],
      ),
    );
  }
}
