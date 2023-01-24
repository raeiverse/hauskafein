import 'package:flutter/material.dart';

import '../../../theme.dart';

class Today_Widget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  final double rating;
  const Today_Widget(
      {Key? key,
      required this.imageUrl,
      required this.title,
      this.desc = '',
      this.rating = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              transform: Matrix4.translationValues(
                  MediaQuery.of(context).size.width / -6.5, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.15),
                    blurRadius: 35,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 93,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: blackColor.withOpacity(0.60),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                title,
                                style: HeadlineHead.copyWith(
                                  color: Neutral10,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/icon_star.png'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Text(
                                  rating.toString(),
                                  style: BodyRegular.copyWith(
                                    color: Neutral10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          desc,
                          style: BodyRegular.copyWith(
                            color: Neutral10,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
