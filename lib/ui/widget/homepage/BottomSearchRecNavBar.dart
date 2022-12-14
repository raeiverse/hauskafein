import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class SearchRecNavBar extends StatelessWidget {
  final Color baseColor;
  final Color textColor;
  final Color baseSColor;
  final Color textSColor;
  const SearchRecNavBar({
    Key? key,
    required this.baseColor,
    required this.textColor,
    required this.baseSColor,
    required this.textSColor,
  }) : super(key: key);

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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 4),
                        width: MediaQuery.of(context).size.width / 4.5,
                        height: 28,
                        decoration: BoxDecoration(
                          color: baseColor,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                          child: Text(
                            'For You',
                            style: regularText.copyWith(
                              fontWeight: medium,
                              color: textColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/searchpage');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 4),
                        width: MediaQuery.of(context).size.width / 4.5,
                        height: 28,
                        decoration: BoxDecoration(
                          color: baseSColor,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                          child: Text(
                            'Search',
                            style: regularText.copyWith(
                              fontWeight: medium,
                              color: textSColor,
                            ),
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
