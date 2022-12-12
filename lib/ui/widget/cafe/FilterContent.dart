import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class FilterContent extends StatelessWidget {
  const FilterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            Container(
              width: 66,
              height: 66,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/icon_coffee.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 4),
            Text(
              'data',
              style: HeadlineSub.copyWith(
                color: Neutral90,
              ),
            )
          ],
        ),
      ),
    );
  }
}
