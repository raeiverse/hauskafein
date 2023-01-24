import 'package:flutter/material.dart';

import '../../../../../theme.dart';
import '../../../ArticleCard.dart';

class ArticleRelatedTeamReviewPage extends StatelessWidget {
  const ArticleRelatedTeamReviewPage({super.key});

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
            imageUrl: 'assets/images/images_mainprofile_1.png',
            title: 'A Review: Arion Grand Opening',
            desc: 'Wakil Ketua Asosiasi Eksportir & Kopi Indonesia (AEKI)',
            date: '13 Januari 2022',
          ),
        ],
      ),
    );
  }
}
