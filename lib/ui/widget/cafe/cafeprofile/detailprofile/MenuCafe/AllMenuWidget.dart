import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class AllMenuWidget extends StatelessWidget {
  const AllMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.14,
      height: 100,
      margin: EdgeInsets.only(top: 8),
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
                image: AssetImage('assets/images/1.jpg'),
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
                    'Cappucino',
                    style: HeadlineSub.copyWith(
                      color: Neutral100,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    'Menggunakan biji kopi robusta dan diproses dengan campuran 7:3 ',
                    style: CaptionRegular.copyWith(
                      color: Neutral70,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Spacer(),
                  Text(
                    'Rp 18.000,00',
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
