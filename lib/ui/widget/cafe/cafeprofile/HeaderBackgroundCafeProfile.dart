import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../theme.dart';

class HeaderBackgroundCafeProfile extends StatelessWidget {
  // final int imageIndex;
  final String imageUrl;
  const HeaderBackgroundCafeProfile({
    Key? key,
    // required this.imageIndex,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      width: double.infinity,
      height: 297,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.fill,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Neutral10.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
