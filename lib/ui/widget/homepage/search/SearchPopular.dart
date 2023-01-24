import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/homepage/search/SearchPopularWidget.dart';

class SearchPopular extends StatelessWidget {
  const SearchPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 150),
      child: Column(
        children: [
          // TEXT POPULAR PLACES + SEE MORE
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  'Popular Places',
                  style: BodyMedium.copyWith(
                    color: Neutral100,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/cafepage');
                  },
                  child: Text(
                    'See More',
                    style: BodyRegular.copyWith(
                      color: orangeColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  SearchPopularWidget(),
                  SearchPopularWidget(),
                  SearchPopularWidget(),
                  SearchPopularWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
