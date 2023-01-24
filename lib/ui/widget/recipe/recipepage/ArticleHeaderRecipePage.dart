import 'package:flutter/material.dart';

import '../../../../theme.dart';
import '../../../pages/BackButtonWidget.dart';

class ArticleHeaderRecipePage extends StatelessWidget {
  const ArticleHeaderRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.35,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.35,
            decoration: BoxDecoration(
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.15),
                  blurRadius: 25,
                  offset: Offset(0, 5),
                ),
              ],
              image: DecorationImage(
                image: AssetImage('assets/images/recipe/kopi_10.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButtonWidget(),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Es Kopi Susu',
                          style: TitleM.copyWith(
                            color: Neutral100,
                          ),
                        ),
                        Text(
                          'By ' + 'Iqbal Abdulrahman',
                          style: BodyRegular.copyWith(
                            color: Neutral70,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/icon_shareLink.png',
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
