import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/cafe/HeaderCafe.dart';
import 'package:hauskafein/ui/widget/magazine/HeaderMagazine.dart';

class MagazinePage extends StatelessWidget {
  const MagazinePage({super.key});

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
                image: AssetImage(
                    'assets/images/magazine/images_magazineBackground.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                HeaderMagazine(),
                Text('data'),
                HeaderMagazine(),
                SizedBox(height: 20),
                Text('data'),
                HeaderMagazine(),
                SizedBox(height: 20),
                Text('data'),
                HeaderMagazine(),
                SizedBox(height: 20),
                Text('data'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
