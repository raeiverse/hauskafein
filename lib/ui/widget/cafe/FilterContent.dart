import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class FilterContent extends StatelessWidget {
  final String imageUrl;
  final String title;
  const FilterContent({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 7.8,
              height: MediaQuery.of(context).size.height / 14.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 4),
            Text(
              title,
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
