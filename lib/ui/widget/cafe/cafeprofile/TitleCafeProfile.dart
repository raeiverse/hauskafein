import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:url_launcher/url_launcher.dart';

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
  _launchDirectionUrl() async {
    Uri DirectionUrl = Uri.parse(
        'https://www.google.com/maps/dir/-7.9691776,112.6301696/ancala+cafe/@-7.9062455,112.5083542,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x2e787f5b159fae01:0xc4a92abb54d648d1!2m2!1d112.5240383!2d-7.8430025');
    if (await canLaunchUrl(DirectionUrl)) {
      await launchUrl(DirectionUrl);
    } else {
      throw 'Could not launch $DirectionUrl';
    }
  }

  _launchGrabUrl() async {
    Uri GrabUrl = Uri.parse('Not Found');
    if (await canLaunchUrl(GrabUrl)) {
      await launchUrl(GrabUrl);
    } else {
      throw 'Could not launch $GrabUrl';
    }
  }

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
                    GestureDetector(
                      onTap: () {
                        _launchDirectionUrl();
                      },
                      child: Column(
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
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // GRABFOOD
                    GestureDetector(
                      onTap: () {
                        // _launchGrabUrl();
                      },
                      child: Column(
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
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
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
