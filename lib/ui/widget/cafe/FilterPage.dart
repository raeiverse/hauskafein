import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/CloseButtonWidget.dart';
import 'package:hauskafein/ui/widget/cafe/FilterContent.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/images_filterBackground.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.54,
                fit: BoxFit.cover,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.54,
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
                  child: Wrap(
                    children: [
                      FilterContent(),
                      FilterContent(),
                      FilterContent(),
                      FilterContent(),
                      FilterContent(),
                    ],
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
                  child: Wrap(
                    children: [
                      FilterContent(),
                      FilterContent(),
                    ],
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
