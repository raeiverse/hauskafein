import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/GlobalBottomNavBar.dart';
import 'package:hauskafein/ui/widget/cafe/FilterBarCafe.dart';
import 'package:hauskafein/ui/widget/cafe/HeaderCafe.dart';

class CafeMainpage extends StatelessWidget {
  const CafeMainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.8,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/cafe/images_background.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderCafe(),
                    ],
                  ),
                ),
              ],
            ),
            FilterBarCafe(),
          ],
        ),
      ),
    );
  }
}
