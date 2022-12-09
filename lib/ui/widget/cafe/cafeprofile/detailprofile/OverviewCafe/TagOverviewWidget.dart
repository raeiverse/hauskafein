import 'package:flutter/material.dart';

import '../../../../../../theme.dart';

class TagOverviewWidget extends StatelessWidget {
  final String title;
  const TagOverviewWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          margin: EdgeInsets.only(right: 8, top: 8, left: 16),
          decoration: BoxDecoration(
            color: Neutral30,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 2,
              horizontal: 8,
            ),
            child: Text(
              title,
              style: CaptionRegular.copyWith(
                color: Neutral70,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
