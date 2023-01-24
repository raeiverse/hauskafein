import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';

class HeaderRecipe extends StatelessWidget {
  const HeaderRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackButtonWidget(),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 31),
          child: Text(
            'Buat minuman\nfavoritmu di rumah',
            style: TitleClashM.copyWith(
              color: Neutral100,
            ),
          ),
        ),
      ],
    );
  }
}
