import 'package:flutter/material.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';
import 'package:hauskafein/ui/widget/LinearBackground.dart';
import 'package:hauskafein/ui/widget/magazine/news/newspage/ArticleContentNewsPage.dart';
import 'package:hauskafein/ui/widget/magazine/news/newspage/ArticleRelatedNewsPage.dart';

import '../../../../../theme.dart';

class ArticleNewsPage extends StatelessWidget {
  const ArticleNewsPage({super.key});

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
                  imageUrl: 'assets/images/news/images_articlebackground.png',
                  height: 2.17,
                ),
                BackButtonWidget(),
                Column(
                  children: [
                    ArticleContentNewsPage(),
                    ArticleRelatedNewsPage(),
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
