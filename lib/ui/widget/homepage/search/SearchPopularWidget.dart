import 'package:flutter/material.dart';

import '../../../../theme.dart';

class SearchPopularWidget extends StatelessWidget {
  const SearchPopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 140,
      height: 236,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: CardRadius,
      ),
      child: Column(
        children: [
          //IMAGES
          Container(
            width: MediaQuery.of(context).size.width,
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/1.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          //TEKS
          Container(
            margin: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rivarno Kopi',
                  style: HeadlineHead.copyWith(
                    color: Neutral90,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(height: 4),
                Text(
                  'Coffee, non coffee, non milk, tea based',
                  style: CaptionRegular.copyWith(
                    color: Neutral70,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 11,
                          height: 11,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/icon_star.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Text(
                          '4.8',
                          style: CaptionMedium.copyWith(
                            color: Neutral70,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 11,
                          height: 11,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/icon_location.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Text(
                          '6m',
                          style: CaptionMedium.copyWith(
                            color: Neutral70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
