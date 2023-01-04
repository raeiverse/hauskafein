import 'package:flutter/material.dart';

import '../../../../theme.dart';

class CardNewsPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  final String date;
  const CardNewsPage(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.desc,
      required this.date})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/articlenewspage');
        },
        child: Container(
          margin: EdgeInsets.only(top: 16),
          width: MediaQuery.of(context).size.width,
          height: 243,
          decoration: BoxDecoration(
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.15),
                blurRadius: 15,
                offset: Offset(0, 5),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: blackColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  title,
                  style: HeadlineHead.copyWith(color: Neutral100),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  desc,
                  style: BodyRegular.copyWith(color: Neutral70),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      date,
                      style: CaptionRegular.copyWith(color: Neutral60),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
