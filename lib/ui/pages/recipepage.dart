import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/LinearBlurBackground.dart';
import 'package:hauskafein/ui/widget/recipe/CardRecipe.dart';
import 'package:hauskafein/ui/widget/recipe/HeaderRecipe.dart';

import 'BottomNavbarWidget.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

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
                    isSelected: false,
                  ),
                  BottomNavbarWidget(
                    imageUrl: 'assets/images/icon_recipe.png',
                    title: 'Recipe',
                    pages: '/recipepage',
                    isSelected: true,
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
      body: Stack(
        children: [
          LinearBlurBackground(
            imageUrl: 'assets/images/recipe/images_background.png',
            height: 4.17,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderRecipe(),
                Center(
                  child: Wrap(
                    children: [
                      CardRecipe(
                        imageUrl: 'assets/images/recipe/coffee.png',
                        title: 'Coffee',
                        nextPage: '/menurecipepage',
                      ),
                      CardRecipe(
                        imageUrl: 'assets/images/recipe/tea.png',
                        title: 'Tea',
                        nextPage: '/errorpage',
                      ),
                      CardRecipe(
                        imageUrl: 'assets/images/recipe/chocolate.png',
                        title: 'Chocolate',
                        nextPage: '/errorpage',
                      ),
                      CardRecipe(
                        imageUrl: 'assets/images/recipe/milk.png',
                        title: 'Milk',
                        nextPage: '/errorpage',
                      ),
                      CardRecipe(
                        imageUrl: 'assets/images/recipe/smoothies.png',
                        title: 'Smoothies',
                        nextPage: '/errorpage',
                      ),
                      CardRecipe(
                        imageUrl: 'assets/images/recipe/yogurt.png',
                        title: 'Yogurt',
                        nextPage: '/errorpage',
                      ),
                    ],
                  ),
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
