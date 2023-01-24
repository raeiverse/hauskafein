import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class HeaderCardWidget extends StatelessWidget {
  const HeaderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: MediaQuery.of(context).size.width / 1.91,
      height: MediaQuery.of(context).size.height / 3.7,
      // height: 243,
      // width: 253,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: CardRadius,
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset: Offset(0, 5),
            color: blackColor.withOpacity(0.15),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6.5,
            // height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              image: DecorationImage(
                image:
                    AssetImage('assets/images/magazine/images_teamReview.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'A Review: Office Coffee',
                  style: HeadlineHead.copyWith(color: Neutral100),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'This container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.',
                    style: BodyRegular.copyWith(color: Neutral70),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'read more',
                  style: CaptionRegular.copyWith(
                    color: orangeColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text(
                  '17 jan 2021',
                  style: CaptionRegular.copyWith(
                    color: Neutral60,
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
