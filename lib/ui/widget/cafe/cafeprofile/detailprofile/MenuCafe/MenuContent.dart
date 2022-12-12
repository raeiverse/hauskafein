import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/MenuCafe/AllMenu.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/MenuCafe/MenuMenu.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/MenuCafe/MenuTag.dart';

class MenuContent extends StatelessWidget {
  const MenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 8,
        bottom: 16,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuTag(),
              AllMenu(),
              MenuMenu(),
            ],
          ),
        ],
      ),
    );
  }
}
