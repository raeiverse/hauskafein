import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class ArticleContentNewsPage extends StatelessWidget {
  const ArticleContentNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 2.56,
        ),
        width: MediaQuery.of(context).size.width / 1.14,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 5),
              color: blackColor.withOpacity(0.15),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0, 0),
            colors: <Color>[
              whiteColor.withOpacity(0),
              whiteColor,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Harga Kopi \nMelambung Tinggi',
                style: TitleClashL.copyWith(
                  color: Neutral100,
                ),
              ),
              SizedBox(height: 32),
              // AGENDA
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Text(
                      '17 Jan 2022',
                      style: BodyRegular.copyWith(
                        color: Neutral60,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: 3,
                      height: 3,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Neutral60,
                      ),
                    ),
                    Text(
                      '10 min read',
                      style: BodyRegular.copyWith(
                        color: Neutral60,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: 3,
                      height: 3,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Neutral60,
                      ),
                    ),
                    Text(
                      'Iqbal Abdulrahman',
                      style: BodyRegular.copyWith(
                        color: Neutral60,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'This container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.\n\nThis container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.This container contain description of expert verified user who objectively leave their review for this cafe.',
                  style: BodyRegular.copyWith(
                    color: Neutral90,
                    fontSize: 16,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/logo_twitter.png',
                    width: 24,
                    height: 24,
                  ),
                  Image.asset(
                    'assets/images/logo_fb.png',
                    width: 24,
                    height: 24,
                  ),
                  Image.asset(
                    'assets/images/logo_copyUrl.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
