import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class SearchRecNavBar extends StatefulWidget {
  const SearchRecNavBar({super.key});

  @override
  State<SearchRecNavBar> createState() => _SearchRecNavBarState();
}

class _SearchRecNavBarState extends State<SearchRecNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 82),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 16),
          width: MediaQuery.of(context).size.width / 2.25,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.transparent,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      width: MediaQuery.of(context).size.width / 4.3,
                      height: 28,
                      decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text(
                          'For You',
                          style: regularText.copyWith(
                            fontWeight: medium,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      width: 83,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Text(
                          'Search',
                          style: regularText.copyWith(
                            fontWeight: medium,
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
