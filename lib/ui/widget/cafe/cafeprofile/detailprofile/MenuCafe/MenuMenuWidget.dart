import 'package:flutter/material.dart';
import '../../../../../../theme.dart';

class MenuMenuWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  final String price;
  final String tag;
  const MenuMenuWidget(
      {Key? key,
      required this.imageUrl,
      required this.title,
      this.desc = ' ',
      required this.price,
      required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.258,
      height: 100,
      margin: EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
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
              padding: const EdgeInsets.only(left: 16, bottom: 6, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: HeadlineSub.copyWith(
                      color: Neutral100,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    desc,
                    style: CaptionRegular.copyWith(
                      color: Neutral70,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Spacer(),
                  Text(
                    price,
                    style: BodyRegular.copyWith(
                      color: orangeColor,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
