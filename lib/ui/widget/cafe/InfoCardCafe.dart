import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class InfoCardCafe extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  final double rating;
  final int distance;
  final String open;
  final String closed;
  const InfoCardCafe({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.desc,
    this.rating = 0.0,
    this.distance = 0,
    required this.open,
    required this.closed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/cafeprofile');
        },
        child: Container(
          margin: EdgeInsets.only(top: 24),
          width: MediaQuery.of(context).size.width / 1.14,
          height: 222,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill),
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.15),
                blurRadius: 15,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 12, left: 12),
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: orangeColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Open Now',
                    style: CaptionMedium.copyWith(
                      color: Neutral10,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 82,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: HeadlineHead.copyWith(
                          color: Neutral90,
                        ),
                      ),
                      Text(
                        desc,
                        style: CaptionRegular.copyWith(
                          color: Neutral70,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Container(
                            width: 11,
                            height: 11,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/icon_star.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text(
                            rating.toString(),
                            style: CaptionMedium.copyWith(
                              color: Neutral70,
                            ),
                          ),
                          SizedBox(width: 16),
                          Container(
                            width: 11,
                            height: 11,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/icon_location.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                          Text(
                            distance.toString() + ' m',
                            style: CaptionMedium.copyWith(
                              color: Neutral70,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 11,
                            height: 11,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/icon_clock.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                          Text(
                            open + '-' + closed,
                            style: CaptionMedium.copyWith(
                              color: Neutral70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
