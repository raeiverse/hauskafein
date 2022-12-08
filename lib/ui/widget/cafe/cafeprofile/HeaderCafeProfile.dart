import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class HeaderCafeProfile extends StatelessWidget {
  const HeaderCafeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Container(
        //   margin: EdgeInsets.only(bottom: 8),
        //   width: double.infinity,
        //   height: 297,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage('assets/images/cafe/images_popular_1.png'),
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        //   child: BackdropFilter(
        //     filter: ImageFilter.blur(
        //       sigmaX: 5,
        //       sigmaY: 5,
        //     ),
        //     child: Container(
        //       decoration: BoxDecoration(
        //         color: Neutral10.withOpacity(0.2),
        //       ),
        //     ),
        //   ),
        // ),
        Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 8),
                width: MediaQuery.of(context).size.width / 1.14,
                height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 35,
                      offset: Offset(0, 8),
                      color: Neutral10.withOpacity(0.15),
                    ),
                  ],
                  image: DecorationImage(
                      image:
                          AssetImage('assets/images/cafe/images_popular_1.png'),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
