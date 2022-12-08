import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubit/pages_cubit.dart';
import '../../../../../theme.dart';

class ContentNavbarWidget extends StatelessWidget {
  final int index;
  final String title;
  const ContentNavbarWidget({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ContentCubit>().setPage(index);
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 28,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: context.read<PagesCubit>().state == index
                  ? orangeColor
                  : transparentColor,
            ),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: BodyRegular.copyWith(
              color: context.read<PagesCubit>().state == index
                  ? orangeColor
                  : Neutral80,
            ),
          ),
        ),
      ),
    );
  }
}
