import 'package:flutter/material.dart';

import '../../theme.dart';

class BottomNavbarWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String pages;
  final bool isSelected;
  const BottomNavbarWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.pages,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pages);
      },
      child: Container(
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              width: 26,
              height: 26,
              color: isSelected == true ? orangeColor : grayColor,
            ),
            Text(
              title,
              style: regularText.copyWith(
                fontWeight: medium,
                fontSize: 10,
                color: isSelected == true ? orangeColor : grayColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
