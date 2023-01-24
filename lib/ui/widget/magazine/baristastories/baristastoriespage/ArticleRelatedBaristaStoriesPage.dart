import 'package:flutter/material.dart';

import '../../../../../theme.dart';
import '../../../ArticleCard.dart';

class ArticleRelatedBaristaStoriesPage extends StatelessWidget {
  const ArticleRelatedBaristaStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 24),
            child: Text(
              'Artikel Terkait',
              style: HeadlineSub.copyWith(
                color: Neutral100,
              ),
            ),
          ),
          ArticleCard(
            imageUrl: 'assets/images/magazine/images_barista1.png',
            title: 'Stories Iqbal Abdulrahman',
            desc: 'Wakil Ketua Asosiasi Eksportir & Kopi Indonesia (AEKI)',
            date: '13 Januari 2022',
          ),
        ],
      ),
    );
  }
}
