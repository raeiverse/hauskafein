import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class ReviewCafeProfile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  const ReviewCafeProfile(
      {Key? key, required this.imageUrl, required this.title, this.desc = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      width: MediaQuery.of(context).size.width / 1.14,
      height: 97,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: CardRadius,
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.15),
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: CardRadius,
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: HeadlineHead.copyWith(
                        color: Neutral90,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      desc,
                      style: BodyRegular.copyWith(
                        color: Neutral60,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
