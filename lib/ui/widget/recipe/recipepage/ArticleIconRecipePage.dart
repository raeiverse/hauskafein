import 'package:flutter/material.dart';

import '../../../../theme.dart';

class ArticleIconRecipePage extends StatelessWidget {
  const ArticleIconRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/recipe/icon_star.png',
                  width: 24,
                  height: 24,
                ),
                Text(
                  '4.6',
                  style: HeadlineSub.copyWith(
                    color: Neutral80,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/recipe/icon_time.png',
                  width: 24,
                  height: 24,
                ),
                Text(
                  '15 min',
                  style: HeadlineSub.copyWith(
                    color: Neutral80,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/recipe/icon_price.png',
                  width: 24,
                  height: 24,
                ),
                Text(
                  '\$',
                  style: HeadlineSub.copyWith(
                    color: Neutral80,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/recipe/icon_difficult.png',
                  width: 24,
                  height: 24,
                ),
                Text(
                  'Easy',
                  style: HeadlineSub.copyWith(
                    color: Neutral80,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
