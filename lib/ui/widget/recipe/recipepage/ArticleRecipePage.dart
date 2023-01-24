import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/recipe/recipepage/ArticleHeaderRecipePage.dart';
import 'package:hauskafein/ui/widget/recipe/recipepage/ArticleIconRecipePage.dart';
import 'package:hauskafein/ui/widget/recipe/recipepage/ArticleRelatedRecipePage.dart';
import 'package:hauskafein/ui/widget/recipe/recipepage/ArticleTextWidget.dart';

class ArticleRecipePage extends StatelessWidget {
  const ArticleRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Neutral10,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ArticleHeaderRecipePage(),
            ArticleIconRecipePage(),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.15),
                    blurRadius: 25,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ingredients',
                      style: HeadlineSub.copyWith(
                        color: Neutral90,
                      ),
                    ),
                    ArticleTextWidget(teks: 'Espresso 1 shot'),
                    ArticleTextWidget(teks: 'Freshmilk 120ml'),
                    ArticleTextWidget(teks: 'Susu kental manis 10gr'),
                    ArticleTextWidget(teks: 'Gula cair 10 ml'),
                    ArticleTextWidget(teks: 'Krimmer non-dairy 8gr'),
                    ArticleTextWidget(teks: 'Es batu secukupnya'),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Text(
                        'Directions',
                        style: HeadlineSub.copyWith(
                          color: Neutral90,
                        ),
                      ),
                    ),
                    ArticleTextWidget(
                        teks:
                            'Masukkan bahan gula cair, susu kental manis, dan krimmer kedalam gelas'),
                    ArticleTextWidget(
                        teks:
                            'Setelahnya beri sedikit air panas dan larutkan ketiga bahan tsb'),
                    ArticleTextWidget(
                        teks:
                            'Setelah larut, masukkan susu fresh milk dan diaduk sampai tercampur rata, dan tambahkan es batu secukupnya'),
                    ArticleTextWidget(
                        teks:
                            'Setelahnya, masuk kan bintang tamu kita, yup benar sekali, espresso! masukan dengan pelan penuh penghayatan agar es kopi susu anu berlayer sempurna.'),
                  ],
                ),
              ),
            ),
            ArticleRelatedRecipePage(),
          ],
        ),
      ),
    );
  }
}
