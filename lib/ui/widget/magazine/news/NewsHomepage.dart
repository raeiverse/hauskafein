import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/ArticleCard.dart';
import 'package:hauskafein/ui/widget/magazine/news/NewsHeader.dart';

import '../../../../theme.dart';

class NewsHomepage extends StatelessWidget {
  const NewsHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23),
      child: Column(
        children: [
          NewsHeader(),
          ArticleCard(
            imageUrl: 'assets/images/news_1.png',
            title: 'Harga Kopi Melambung Tinggi',
            desc:
                'Wakil ketua Asosiasi Eksportir & Industri Kopi Indonesia (AEKI) Pranoto Soenarto telah mengumumkan bahwa terhitung sejak',
            date: '13 Juni 2022',
          ),
          ArticleCard(
            imageUrl: 'assets/images/news_2.png',
            title: 'Efek Ciamik Kopi Arabika',
            desc:
                'Kopi dikonsumsi pertama kali pada abad ke-9 di Ethiopia. Saat ini kopi arabika',
            date: '10 Januari 2022',
          ),
        ],
      ),
    );
  }
}
