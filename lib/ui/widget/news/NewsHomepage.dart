import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/news/NewsHeader.dart';
import 'package:hauskafein/ui/widget/news/NewsWidget.dart';

import '../../../theme.dart';

class NewsHomepage extends StatelessWidget {
  const NewsHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23),
      child: Column(
        children: [
          NewsHeader(),
          NewsWidget(),
          NewsWidget(),
        ],
      ),
    );
  }
}
