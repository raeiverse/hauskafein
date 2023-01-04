import 'package:flutter/material.dart';

import '../../../../theme.dart';

class ArticleContentEventPage extends StatelessWidget {
  const ArticleContentEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 2.56,
        ),
        width: MediaQuery.of(context).size.width / 1.14,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 5),
              color: blackColor.withOpacity(0.15),
            ),
          ],
        ),
        child: Column(
          children: [
            Text('data'),
            SizedBox(height: 500),
            Text('data'),
            SizedBox(height: 500),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
