import 'package:flutter/material.dart';

import '../../../../theme.dart';

class HeaderCafeProfileWidget extends StatelessWidget {
  // final int index;
  final String imageUrl;
  const HeaderCafeProfileWidget({
    Key? key,
    required this.imageUrl,
    // required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        width: MediaQuery.of(context).size.width / 1.2,
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 35,
              offset: Offset(0, 8),
              color: Neutral10.withOpacity(0.15),
            ),
          ],
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
