import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class Event_Header extends StatelessWidget {
  const Event_Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 16, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Upcoming Event',
            style: titleText.copyWith(
              fontWeight: semiBold,
              fontSize: 20,
            ),
          ),
          Container(
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      'See More',
                      style: regularText.copyWith(
                        color: orangeColor,
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/icon_arrowright.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
