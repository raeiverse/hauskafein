import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/overviewcafe/ContentNavbar.dart';

class MainOverview extends StatelessWidget {
  const MainOverview({super.key});

  @override
  // Widget BuildContent(int CurrentIndex) {
  //   switch (CurrentIndex) {
  //     case 0:
  //       return OverviewPage();
  //     case 1:
  //       return MenuPage();
  //     default:
  //       return Overview();
  //   }
  // }
  Widget ContentNavbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContentNavbarWidget(
          index: 0,
          title: 'Overview',
        ),
        ContentNavbarWidget(
          index: 1,
          title: 'Menu',
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.14,
      height: 522,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: CardRadius,
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.15),
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          ContentNavbar(),
        ],
      ),
    );
  }
}
