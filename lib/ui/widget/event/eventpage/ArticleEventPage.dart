import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';
import 'package:hauskafein/ui/widget/LinearBackground.dart';
import 'package:hauskafein/ui/widget/event/eventpage/ArticleContentEventPage.dart';
import 'package:hauskafein/ui/widget/magazine/news/NewsHomepage.dart';

class ArticleEventPage extends StatelessWidget {
  const ArticleEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            LinearBackground(
              imageUrl: 'assets/images/event/images_articleBackground.png',
              height: 2.17,
            ),
            Column(
              children: [
                ArticleContentEventPage(),
                SizedBox(height: MediaQuery.of(context).size.height / 12.4),
              ],
            ),
            BackButtonWidget(),
          ],
        ),
      ),
    );
  }
}
