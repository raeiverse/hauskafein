import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/MenuCafe/AllMenuWidget.dart';

class AllMenu extends StatelessWidget {
  const AllMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, left: 16, bottom: 8),
          child: Text(
            'All-time popular',
            style: HeadlineHead.copyWith(
              color: Neutral100,
            ),
          ),
        ),
        AllMenuWidget(),
        AllMenuWidget(),
      ],
    );
  }
}
