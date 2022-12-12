import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/OverviewCafe/TagOverviewWidget.dart';

class TagOverview extends StatelessWidget {
  const TagOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        children: [
          TagOverviewWidget(title: 'Wi-Fi'),
        ],
      ),
    );
  }
}
