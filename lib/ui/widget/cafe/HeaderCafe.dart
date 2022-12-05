import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/cafe/SearchSortCafe.dart';

class HeaderCafe extends StatelessWidget {
  const HeaderCafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 46),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: whiteColor.withOpacity(0.7),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    margin: EdgeInsets.all(6),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: whiteColor.withOpacity(0.5),
                      //   ),
                      // ],
                      image: DecorationImage(
                        image: AssetImage('assets/images/icon_back.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
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
