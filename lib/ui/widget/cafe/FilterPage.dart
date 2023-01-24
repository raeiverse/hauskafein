import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/CloseButtonWidget.dart';
import 'package:hauskafein/ui/widget/LinearBackground.dart';
import 'package:hauskafein/ui/widget/cafe/FilterContent.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          LinearBackground(
            imageUrl: 'assets/images/images_filterBackground.png',
            height: 3.54,
          ),
          Container(
            margin: EdgeInsets.only(top: 44, left: 16, right: 16, bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Beverages',
                      style: TitleClashL.copyWith(
                        color: Neutral100,
                      ),
                    ),
                    CloseButtonWidget(),
                  ],
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Center(
                    child: Wrap(
                      children: [
                        FilterContent(
                          imageUrl: 'assets/images/icon_coffee.png',
                          title: 'Coffee',
                        ),
                        FilterContent(
                          imageUrl: 'assets/images/icon_tea.png',
                          title: 'Tea',
                        ),
                        FilterContent(
                          imageUrl: 'assets/images/icon_milk.png',
                          title: 'Milk Based',
                        ),
                        FilterContent(
                          imageUrl: 'assets/images/icon_boba.png',
                          title: 'Boba',
                        ),
                        FilterContent(
                          imageUrl: 'assets/images/icon_yogurt.png',
                          title: 'Yogurt',
                        ),
                        FilterContent(
                          imageUrl: 'assets/images/icon_icecream.png',
                          title: 'Ice Cream',
                        ),
                        FilterContent(
                          imageUrl: 'assets/images/icon_boba.png',
                          title: 'Boba',
                        ),
                        FilterContent(
                          imageUrl: 'assets/images/icon_smoothies.png',
                          title: 'Smoothies',
                        ),
                        FilterContent(
                          imageUrl: 'assets/images/icon_softdrink.png',
                          title: 'Softdrink',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Food',
                  style: TitleClashL.copyWith(
                    color: Neutral100,
                  ),
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Center(
                    child: Wrap(
                      children: [
                        FilterContent(
                          imageUrl: 'assets/images/icon_snack.png',
                          title: 'Snack',
                        ),
                        FilterContent(
                          imageUrl: 'assets/images/icon_meal.png',
                          title: 'Main Course',
                        ),
                        FilterContent(
                          imageUrl: 'assets/images/blank.png',
                          title: ' ',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
