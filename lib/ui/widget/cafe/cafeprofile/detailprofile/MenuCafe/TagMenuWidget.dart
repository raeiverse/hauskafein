import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hauskafein/cubit/pages_cubit.dart';

import '../../../../../../theme.dart';

class TagMenuWidget extends StatelessWidget {
  final int index;
  final String title;
  const TagMenuWidget({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MenuTagCubit>().setMenuTag(index);
      },
      child: Container(
        margin: EdgeInsets.only(right: 8, top: 8, left: 16),
        decoration: BoxDecoration(
          color: context.read<MenuTagCubit>().state == index
              ? orangeColor
              : Neutral30,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 8,
          ),
          child: Text(
            title,
            style: CaptionRegular.copyWith(
              color: context.read<MenuTagCubit>().state == index
                  ? Neutral10
                  : Neutral70,
            ),
          ),
        ),
      ),
    );
  }
}
