import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hauskafein/cubit/pages_cubit.dart';

import '../../theme.dart';

class GlobalBottomNavBarWidget extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String title;
  const GlobalBottomNavBarWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PagesCubit>().setPage(index);
      },
      child: Container(
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              width: 26,
              height: 26,
              color: context.read<PagesCubit>().state == index
                  ? orangeColor
                  : grayColor,
            ),
            Text(
              title,
              style: regularText.copyWith(
                fontWeight: medium,
                fontSize: 10,
                color: context.read<PagesCubit>().state == index
                    ? orangeColor
                    : grayColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
