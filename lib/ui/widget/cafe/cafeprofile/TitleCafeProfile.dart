import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class TitleCafeProfile extends StatelessWidget {
  final String title;
  final double rating;
  final String price;
  const TitleCafeProfile({
    Key? key,
    required this.title,
    this.rating = 0,
    this.price = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        width: MediaQuery.of(context).size.width / 1.14,
        height: 91,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4,
            sigmaY: 4,
          ),
          child: Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              color: whiteColor.withOpacity(0.8),
            ),
            child: Column(
              children: [
                // TITLE
                Text(
                  title,
                  style: TitleClashM.copyWith(
                    color: Neutral100,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // RATING
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 4),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/icon_star.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                        Text(
                          rating.toString() + '/5',
                          style: BodyRegular.copyWith(
                            color: Neutral70,
                          ),
                        ),
                      ],
                    ),
                    // DIRECTION
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 4),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/icon_direction.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                        Text(
                          'Direction',
                          style: BodyRegular.copyWith(
                            color: Neutral70,
                          ),
                        ),
                      ],
                    ),
                    // GRABFOOD
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 4),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/icon_grabfood.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                        Text(
                          'Grabfood',
                          style: BodyRegular.copyWith(
                            color: Neutral70,
                          ),
                        ),
                      ],
                    ),
                    // PRICEY
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 4),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/icon_price.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                        Text(
                          price,
                          style: BodyRegular.copyWith(
                            color: Neutral70,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
