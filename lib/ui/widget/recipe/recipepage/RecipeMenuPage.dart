import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/recipe/recipepage/CardRecipeMenuPage.dart';
import 'package:hauskafein/ui/widget/recipe/recipepage/HeaderRecipeMenuPage.dart';

import '../../../../theme.dart';
import '../../../pages/BackButtonWidget.dart';
import '../../../pages/BottomNavbarWidget.dart';
import '../../LinearBlurBackground.dart';

class RecipeMenuPage extends StatelessWidget {
  const RecipeMenuPage({super.key});

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
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          LinearBlurBackground(
            imageUrl: 'assets/images/news/images_background.png',
            height: 4.95,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(),
                HeaderRecipeMenuPage(),
                Center(
                  child: Wrap(
                    children: [
                      CardRecipeMenuPage(
                        imageUrl: 'assets/images/recipe/kopi_1.png',
                        title: 'Es Kopi Susu',
                        desc:
                            'Resep mudah buat kamu melalui hari harimu bersama cuaca panas',
                      ),
                      CardRecipeMenuPage(
                        imageUrl: 'assets/images/recipe/kopi_2.png',
                        title: 'Es Kopi Susu',
                        desc:
                            'Resep mudah buat kamu melalui hari harimu bersama cuaca panas',
                      ),
                      CardRecipeMenuPage(
                        imageUrl: 'assets/images/recipe/kopi_3.png',
                        title: 'Es Kopi Susu',
                        desc:
                            'Resep mudah buat kamu melalui hari harimu bersama cuaca panas',
                      ),
                      CardRecipeMenuPage(
                        imageUrl: 'assets/images/recipe/kopi_4.png',
                        title: 'Es Kopi Susu',
                        desc:
                            'Resep mudah buat kamu melalui hari harimu bersama cuaca panas',
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
