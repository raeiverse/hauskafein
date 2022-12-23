import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/cafe/FilterBarCafe.dart';
import 'package:hauskafein/ui/widget/cafe/HeaderCafe.dart';
import 'package:hauskafein/ui/widget/cafe/InfoCardCafe.dart';

class CafePage extends StatelessWidget {
  const CafePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cafe/images_background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderCafe(),
                InfoCardCafe(
                  imageUrl: 'assets/images/cafe/images_popular_1.png',
                  title: 'Rivarno Kopi',
                  desc: 'Coffee, non coffee, non milk, tea based',
                  rating: 4.8,
                  distance: 6,
                  open: '11.00',
                  closed: '23.00',
                ),
                InfoCardCafe(
                  imageUrl: 'assets/images/cafe/images_popular_1.png',
                  title: 'Rivarno Kopi',
                  desc: 'Coffee, non coffee, non milk, tea based',
                  rating: 4.8,
                  distance: 6,
                  open: '11.00',
                  closed: '23.00',
                ),
                InfoCardCafe(
                  imageUrl: 'assets/images/cafe/images_popular_1.png',
                  title: 'Rivarno Kopi',
                  desc: 'Coffee, non coffee, non milk, tea based',
                  rating: 4.8,
                  distance: 6,
                  open: '11.00',
                  closed: '23.00',
                ),
                InfoCardCafe(
                  imageUrl: 'assets/images/cafe/images_popular_1.png',
                  title: 'Rivarno Kopi',
                  desc: 'Coffee, non coffee, non milk, tea based',
                  rating: 4.8,
                  distance: 6,
                  open: '11.00',
                  closed: '23.00',
                ),
                SizedBox(height: 82),
              ],
            ),
          ),
          FilterBarCafe(),
        ],
      ),
    );
  }
}
