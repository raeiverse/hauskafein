import 'package:flutter/material.dart';

import '../../theme.dart';

class GlobalBottomNavBarWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  const GlobalBottomNavBarWidget(
      {Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}
