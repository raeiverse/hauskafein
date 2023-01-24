import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/ArticleCard.dart';
import '../../../../theme.dart';

class ArticleRelatedRecipePage extends StatelessWidget {
  const ArticleRelatedRecipePage({super.key});

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
              'Mungkin Kamu Suka',
              style: HeadlineSub.copyWith(
                color: Neutral100,
              ),
            ),
          ),
          ArticleCard(
            imageUrl: 'assets/images/ice_1.png',
            title: 'Alfogato Ice Cream',
            desc:
                'Resep mudah buat kamu melalui hari harimu bersama cuaca panas',
            date: 'Resep Teruji',
          ),
        ],
      ),
    );
  }
}
