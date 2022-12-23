import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hauskafein/cubit/pages_cubit.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/GlobalBottomNavBarWidget.dart';
import 'package:hauskafein/ui/pages/cafepage.dart';
import 'package:hauskafein/ui/pages/homepage.dart';
import 'package:hauskafein/ui/pages/magazinepage.dart';
import 'package:hauskafein/ui/pages/recipepage.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget BuildContent(int CurrentIndex) {
    switch (CurrentIndex) {
      case 0:
        return Homepage();
      case 1:
        return CafePage();
      case 2:
        return MagazinePage();
      case 3:
        return RecipePage();
      default:
        return Homepage();
    }
  }

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
                  GlobalBottomNavBarWidget(
                    index: 0,
                    imageUrl: 'assets/images/icon_home.png',
                    title: 'Home',
                  ),
                  GlobalBottomNavBarWidget(
                    index: 1,
                    imageUrl: 'assets/images/icon_cafe.png',
                    title: 'Cafe',
                  ),
                  GlobalBottomNavBarWidget(
                    index: 2,
                    imageUrl: 'assets/images/icon_news.png',
                    title: 'Magazine',
                  ),
                  GlobalBottomNavBarWidget(
                    index: 3,
                    imageUrl: 'assets/images/icon_recipe.png',
                    title: 'Recipe',
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
    return BlocBuilder<PagesCubit, int>(
      builder: (context, CurrentIndex) {
        return Scaffold(
          backgroundColor: whiteColor,
          body: Stack(
            children: [
              BuildContent(CurrentIndex),
              BottomNavBar(),
            ],
          ),
        );
      },
    );
  }
}
