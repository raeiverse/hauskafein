import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/magazine/baristastories/baristastoriespage/ArticleContentBaristaStoriesPage.dart';
import 'package:hauskafein/ui/widget/magazine/baristastories/baristastoriespage/ArticleRelatedBaristaStoriesPage.dart';

import '../../../../../theme.dart';
import '../../../../pages/BackButtonWidget.dart';
import '../../../LinearBackground.dart';

class ArticleBaristaStoriesPage extends StatelessWidget {
  const ArticleBaristaStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                LinearBackground(
                  imageUrl: 'assets/images/magazine/images_barista4.png',
                  height: 2.17,
                ),
                BackButtonWidget(),
                Column(
                  children: [
                    ArticleContentBaristaStoriesPage(),
                    ArticleRelatedBaristaStoriesPage(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
