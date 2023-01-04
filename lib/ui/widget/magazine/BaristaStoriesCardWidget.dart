import 'package:flutter/material.dart';

import '../../../theme.dart';

class BaristaStoriesWidgetCard extends StatelessWidget {
  const BaristaStoriesWidgetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 9,
      // height: 100,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.15),
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4.8,
            // width: 100,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/magazine/images_barista1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.6,
            // width: 303,
            margin: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Stories: Iqbal Abdulrahman',
                  style: BodyMedium.copyWith(
                    color: Neutral100,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(height: 8),
                Text(
                  'Wakil Ketua Asosiasi Eksportir & Industri Kopi Indonesia (AEKI) Pranoto Soenarto menyayangkan aksi spekulan memanfaatkan lonjakan harga kopi. Pasalnya, kecurangan itu akan merugikan petani kopi yang baru saja menikmati kenaikan harga.',
                  style: CaptionRegular.copyWith(
                    color: Neutral90,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Spacer(),
                Text(
                  '13 January 2022',
                  style: CaptionRegular.copyWith(color: Neutral60),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
