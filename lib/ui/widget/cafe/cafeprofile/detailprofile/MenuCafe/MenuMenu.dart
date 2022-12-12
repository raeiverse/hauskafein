import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/MenuCafe/MenuMenuWidget.dart';

import '../../../../../../theme.dart';

class MenuMenu extends StatelessWidget {
  const MenuMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, left: 16, bottom: 8),
          child: Text(
            'Menu',
            style: HeadlineHead.copyWith(
              color: Neutral100,
            ),
          ),
        ),
        MenuMenuWidget(
          imageUrl: 'assets/images/1.jpg',
          title: 'Cappucino',
          desc:
              'Menggunakan biji kopi robusta dan diproses dengan campuran 7:3',
          price: 'Rp 18.000,00',
          tag: 'Coffee',
        ),
        MenuMenuWidget(
          imageUrl: 'assets/images/1.jpg',
          title: 'Cappucino',
          desc:
              'Menggunakan biji kopi robusta dan diproses dengan campuran 7:3',
          price: 'Rp 18.000,00',
          tag: 'Coffee',
        ),
      ],
    );
  }
}
