import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/ui/pages/BottomNavbarWidget.dart';
import 'package:hauskafein/ui/pages/GlobalBottomNavBarWidget.dart';

class BottomNavbar extends StatelessWidget {
  // final bool selected;
  const BottomNavbar({
    Key? key,
    // required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
