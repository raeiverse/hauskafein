import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';
import 'package:hauskafein/ui/widget/magazine/HeaderCardWidget.dart';

class HeaderMagazine extends StatelessWidget {
  const HeaderMagazine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButtonWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            child: Text(
              'Team Review',
              style: TitleClashM.copyWith(
                color: Neutral100,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3.1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    HeaderCardWidget(),
                    HeaderCardWidget(),
                    HeaderCardWidget(),
                    HeaderCardWidget(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
