import 'package:flutter/material.dart';

import '../../../theme.dart';

class Event_Widget extends StatelessWidget {
  final String imageUrl;
  final int day;
  final String month;
  final String title;
  final String desc;
  const Event_Widget({
    Key? key,
    required this.imageUrl,
    required this.day,
    required this.month,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.symmetric(horizontal: 8),
            transform: Matrix4.translationValues(
                MediaQuery.of(context).size.width / -6, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4, left: 4),
                  child: Container(
                    width: 27,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: orangeColor,
                    ),
                    child: Column(
                      children: [
                        Text(
                          day.toString(),
                          style: regularText.copyWith(
                            color: whiteColor,
                            fontWeight: medium,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          month,
                          style: regularText.copyWith(
                            color: whiteColor,
                            fontWeight: medium,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  height: 63,
                  decoration: BoxDecoration(
                    color: blackColor.withOpacity(0.6),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: regularText.copyWith(
                            fontWeight: medium,
                            fontSize: 14,
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          desc,
                          style: regularText.copyWith(
                            color: whiteColor,
                            fontSize: 10,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
