import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class CardRecipe extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String nextPage;
  const CardRecipe({
    Key? key,
    required this.imageUrl,
    this.title = '',
    required this.nextPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, nextPage);
      },
      child: Container(
        margin: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width / 2.97,
        height: MediaQuery.of(context).size.height / 4.07,
        decoration: BoxDecoration(
          color: whiteColor.withOpacity(0),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.15),
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.contain,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: HeadlineSub.copyWith(
              color: orangeColor,
            ),
          ),
        ),
      ),
    );
  }
}
