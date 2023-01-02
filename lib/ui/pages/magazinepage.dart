import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/magazine/BaristaStoriesMagazine.dart';
import 'package:hauskafein/ui/widget/magazine/TeamReviewMagazine.dart';

class MagazinePage extends StatelessWidget {
  const MagazinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/magazine/images_magazineBackground.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.95,
                fit: BoxFit.cover,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.95,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      transparentColor,
                      whiteColor,
                    ],
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                TeamReviewMagazine(),
                BaristaStoriesMagazine(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
