import 'package:flutter/material.dart';

import '../../../../theme.dart';

class CardRecipeMenuPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  const CardRecipeMenuPage({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/articlerecipepage');
      },
      child: Container(
        margin: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width / 2.97,
        height: MediaQuery.of(context).size.height / 2.92,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.15),
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.07,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 9,
                bottom: 4,
                left: 16,
                right: 16,
              ),
              child: Text(
                title,
                style: HeadlineHead.copyWith(
                  color: Neutral100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 9,
                left: 16,
                right: 16,
              ),
              child: Text(
                desc,
                style: CaptionRegular.copyWith(
                  color: Neutral70,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
