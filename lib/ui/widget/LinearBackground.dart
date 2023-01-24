import 'package:flutter/material.dart';

import '../../theme.dart';

class LinearBackground extends StatelessWidget {
  final String imageUrl;
  final double height;
  const LinearBackground({
    Key? key,
    required this.imageUrl,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(
            imageUrl,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / height,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                whiteColor.withOpacity(0),
                whiteColor,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
