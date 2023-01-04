import 'package:flutter/material.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';
import 'package:hauskafein/ui/widget/event/eventpage/ArticleContentEventPage.dart';
import 'package:hauskafein/ui/widget/news/newspage/ArticleContentNewsPage.dart';

import '../../../../theme.dart';

class ArticleNewsPage extends StatelessWidget {
  const ArticleNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget background() {
      return Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/news/images_articlebackground.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.17,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.17,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  whiteColor.withOpacity(0),
                  whiteColor,
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                background(),
                BackButtonWidget(),
                ArticleContentNewsPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
