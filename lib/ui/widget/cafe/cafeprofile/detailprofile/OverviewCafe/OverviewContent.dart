import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/OverviewCafe/EquipmentWidgetOverview.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/OverviewCafe/InfoOverview.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/OverviewCafe/TagOverview.dart';

class OverviewContent extends StatelessWidget {
  const OverviewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TagOverview(),
            InfoOverview(
              address: 'asd',
              day: 'sunday',
              open: '10.00',
              closed: '23.00',
              instaUrl: 'instagram.com/ancalacoffee/',
              phoneNumber: '0812356781',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 8),
                child: Row(
                  children: [
                    EquipmentWidgetOverview(
                      imageUrl: 'assets/images/images_equipment_1.png',
                      caption: 'La Nuava Era-Arpa 2',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
