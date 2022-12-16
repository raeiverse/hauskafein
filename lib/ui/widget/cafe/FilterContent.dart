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
              width: MediaQuery.of(context).size.width / 5.9,
              height: MediaQuery.of(context).size.height / 12.2,
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
