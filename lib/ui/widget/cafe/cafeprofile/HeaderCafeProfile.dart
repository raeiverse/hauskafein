import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/HeaderCafeProfileWidget.dart';

class HeaderCafeProfile extends StatefulWidget {
  const HeaderCafeProfile({super.key});

  @override
  State<HeaderCafeProfile> createState() => _HeaderCafeProfileState();
}

class _HeaderCafeProfileState extends State<HeaderCafeProfile> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> ImgList = [
    HeaderCafeProfileWidget(imageUrl: 'assets/images/images_equipment_1.png'),
    HeaderCafeProfileWidget(imageUrl: 'assets/images/images_equipment_2.png'),
    HeaderCafeProfileWidget(imageUrl: 'assets/images/images_equipment_1.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          //BACKGROUND BLUR
          // Container(
          //   margin: EdgeInsets.only(bottom: 8),
          //   width: double.infinity,
          //   height: 297,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/images/cafe/images_popular_1.png'),
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(
          //       sigmaX: 5,
          //       sigmaY: 5,
          //     ),
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: Neutral10.withOpacity(0.2),
          //       ),
          //     ),
          //   ),
          // ),
          Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                  height: 280,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: ImgList,
              ),
              // SLIDER INDICATOR
              Container(
                transform: Matrix4.translationValues(0, -40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: ImgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: _current == entry.key ? 18 : 4,
                        height: 4,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(2),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
