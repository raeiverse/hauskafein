import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class BaristaStoriesMagazine extends StatelessWidget {
  const BaristaStoriesMagazine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Barista Stories',
                style: TitleClashM.copyWith(color: Neutral100),
              ),
              Row(
                children: [
                  Text(
                    'see more',
                    style: BodyRegular.copyWith(color: orangeColor),
                  ),
                  Image.asset(
                    'assets/images/icon_arrowright.png',
                    width: 20,
                    height: 20,
                  ),
                ],
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 9,
            // height: 100,
            decoration: BoxDecoration(
              color: blackColor,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 4.8,
                  // width: 100,
                  height: MediaQuery.of(context).size.height,
                  color: orangeColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
