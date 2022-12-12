import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hauskafein/cubit/pages_cubit.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/MenuCafe/TagMenuWidget.dart';

class MenuTag extends StatelessWidget {
  const MenuTag({super.key});

  @override
  Widget ContentTagMenu() {
    return Wrap(
      children: [
        TagMenuWidget(
          index: 1,
          title: 'All',
        ),
        TagMenuWidget(
          index: 2,
          title: 'Coffee',
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return BlocBuilder<MenuTagCubit, int>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            children: [
              ContentTagMenu(),
            ],
          ),
        );
      },
    );
  }
}
