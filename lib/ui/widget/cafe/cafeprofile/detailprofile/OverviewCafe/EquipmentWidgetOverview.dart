import 'package:flutter/material.dart';

import '../../../../../../theme.dart';

class EquipmentWidgetOverview extends StatelessWidget {
  final String imageUrl;
  final String caption;
  const EquipmentWidgetOverview(
      {Key? key, required this.imageUrl, required this.caption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 4,
            bottom: 8,
            right: 8,
          ),
          width: 220,
          height: 140,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill),
          ),
        ),
        Text(
          caption,
          style: CaptionRegular.copyWith(
            color: Neutral80,
          ),
        ),
      ],
    );
  }
}
