import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class HeaderCardWidget extends StatelessWidget {
  const HeaderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: MediaQuery.of(context).size.width / 1.54,
      height: MediaQuery.of(context).size.height / 3.98,
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
            height: MediaQuery.of(context).size.height / 6.9,
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
        ],
      ),
    );
  }
}
