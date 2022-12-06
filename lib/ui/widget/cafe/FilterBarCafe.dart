import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class FilterBarCafe extends StatelessWidget {
  const FilterBarCafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 82),
        width: 93,
        height: 40,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.15),
              blurRadius: 15,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/icon_filter.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              'Filter',
              style: regularText.copyWith(
                fontSize: 12,
                fontWeight: medium,
                color: blackColor.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
