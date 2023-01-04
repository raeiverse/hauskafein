import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';
import 'package:hauskafein/ui/widget/event/eventpage/ArticleContentEventPage.dart';

class ArticleEventPage extends StatelessWidget {
  const ArticleEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget background() {
      return Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/event/images_articleBackground.png',
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
                  transparentColor,
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
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            background(),
            Column(
              children: [
                ArticleContentEventPage(),
              ],
            ),
            BackButtonWidget(),
          ],
        ),
      ),
    );
  }
}
