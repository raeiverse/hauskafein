import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/magazine/teamreview/teamreviewpage/ArticleContentTeamReviewPage.dart';
import 'package:hauskafein/ui/widget/magazine/teamreview/teamreviewpage/ArticleRelatedTeamReviewPage.dart';

import '../../../../../theme.dart';
import '../../../../pages/BackButtonWidget.dart';
import '../../../LinearBackground.dart';

class ArticleTeamReviewPage extends StatelessWidget {
  const ArticleTeamReviewPage({super.key});

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
                  imageUrl: 'assets/images/magazine/images_teamReview.png',
                  height: 2.17,
                ),
                BackButtonWidget(),
                Column(
                  children: [
                    ArticleContentTeamReviewPage(),
                    ArticleRelatedTeamReviewPage(),
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
