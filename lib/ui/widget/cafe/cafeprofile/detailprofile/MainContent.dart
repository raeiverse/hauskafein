import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hauskafein/cubit/pages_cubit.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/ContentNavbar.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/MenuCafe/MenuContent.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/OverviewCafe/OverviewContent.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget BuildContent(int CurrentIndexContent) {
    switch (CurrentIndexContent) {
      case 0:
        return OverviewContent();
      case 1:
        return MenuContent();
      default:
        return OverviewContent();
    }
  }

  Widget ContentNavbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContentNavbarWidget(
          index: 0,
          title: 'Overview',
        ),
        ContentNavbarWidget(
          index: 1,
          title: 'Menu',
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return BlocBuilder<ContentCubit, int>(
      builder: (context, CurrentIndexContent) {
        return Container(
          width: MediaQuery.of(context).size.width / 1.14,
          height: 522,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: CardRadius,
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.15),
                blurRadius: 15,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            children: [
              ContentNavbar(),
              BuildContent(CurrentIndexContent),
            ],
          ),
        );
      },
    );
  }
}
