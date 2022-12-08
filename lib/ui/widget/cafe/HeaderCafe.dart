import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';
import 'package:hauskafein/ui/widget/cafe/SearchSortCafe.dart';

class HeaderCafe extends StatelessWidget {
  const HeaderCafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackButtonWidget(),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 74),
          child: Text(
            'Popular cafe',
            style: titleText.copyWith(
              fontWeight: bold,
              fontSize: 20,
            ),
          ),
        ),
        SearchSortCafePage(),
      ],
    );
  }
}
