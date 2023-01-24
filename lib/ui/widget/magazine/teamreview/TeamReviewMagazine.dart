import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';
import 'package:hauskafein/ui/widget/magazine/teamreview/TeamReviewCardWidget.dart';

class TeamReviewMagazine extends StatelessWidget {
  const TeamReviewMagazine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButtonWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            child: Text(
              'Team Review',
              style: TitleClashM.copyWith(
                color: Neutral100,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3.1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    HeaderCardWidget(),
                    HeaderCardWidget(),
                    HeaderCardWidget(),
                    HeaderCardWidget(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/teamreviewpage');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 24),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/icon_arrowright.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text(
                            'See More',
                            style: HeadlineSub.copyWith(
                              color: Neutral100,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
