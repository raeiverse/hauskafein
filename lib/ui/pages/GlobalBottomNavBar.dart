import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hauskafein/ui/pages/GlobalBottomNavBarWidget.dart';

class GlobalBottomNavBar extends StatefulWidget {
  const GlobalBottomNavBar({super.key});

  @override
  State<GlobalBottomNavBar> createState() => _GlobalBottomNavBarState();
}

class _GlobalBottomNavBarState extends State<GlobalBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GlobalBottomNavBarWidget(
                imageUrl: 'assets/images/icon_home.png',
                title: 'Home',
              ),
              GlobalBottomNavBarWidget(
                imageUrl: 'assets/images/icon_coffee.png',
                title: 'Coffee',
              ),
              GlobalBottomNavBarWidget(
                imageUrl: 'assets/images/icon_news.png',
                title: 'News',
              ),
              GlobalBottomNavBarWidget(
                imageUrl: 'assets/images/icon_recipe.png',
                title: 'Recipe',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
