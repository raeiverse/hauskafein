import 'package:flutter/material.dart';

import '../../../theme.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.15),
                    blurRadius: 35,
                    offset: Offset(0, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(8),
                        ),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/images_news_1.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 23,
                            top: 9,
                            bottom: 9,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Harga Kopi Melambung Tinggi',
                                style: regularText.copyWith(
                                  fontSize: 12,
                                  fontWeight: medium,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Wakil Ketua Asosiasi Eksportir & Industri Kopi Indonesia (AEKI) Pranoto Soenarto menyayangkan aksi spekulan memanfaatkan lonjakan harga kopi. Pasalnya, kecurangan itu akan merugikan petani kopi yang baru saja menikmati kenaikan harga.',
                                style: regularText.copyWith(
                                  fontSize: 10,
                                  color: blackColor.withOpacity(0.9),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Spacer(),
                              Text(
                                '13 January 2022',
                                style: regularText.copyWith(
                                  fontSize: 10,
                                  color: blackColor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
