import 'package:flutter/material.dart';

import '../../../../theme.dart';

class ArticleTextWidget extends StatelessWidget {
  final String teks;
  const ArticleTextWidget({Key? key, this.teks = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              color: orangeColor,
              shape: BoxShape.circle,
            ),
          ),
          Flexible(
            child: Text(
              teks,
              style: BodyRegular.copyWith(
                color: Neutral90,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
