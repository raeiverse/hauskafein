import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BackButtonWidget.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/HeaderBackgroundCafeProfile.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/HeaderCafeProfileWidget.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/ReviewCafeProfile.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/TitleCafeProfile.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/detailprofile/MainContent.dart';

class MainCafeProfile extends StatefulWidget {
  const MainCafeProfile({super.key});

  @override
  State<MainCafeProfile> createState() => _MainCafeProfileState();
}

class _MainCafeProfileState extends State<MainCafeProfile> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> ImgList = [
    HeaderCafeProfileWidget(imageUrl: 'assets/images/images_equipment_1.png'),
    HeaderCafeProfileWidget(imageUrl: 'assets/images/images_equipment_2.png'),
    HeaderCafeProfileWidget(imageUrl: 'assets/images/images_equipment_1.png'),
  ];
  @override
  Widget HeaderImageCard() {
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
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

  Widget BuildContent(int _current) {
    switch (_current) {
      case 0:
        return HeaderBackgroundCafeProfile(
            imageUrl: 'assets/images/images_equipment_1.png');
      case 1:
        return HeaderBackgroundCafeProfile(
            imageUrl: 'assets/images/images_equipment_2.png');
      case 2:
        return HeaderBackgroundCafeProfile(
            imageUrl: 'assets/images/images_equipment_1.png');
      default:
        return HeaderBackgroundCafeProfile(
            imageUrl: 'assets/images/images_equipment_1.png');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          BuildContent(_current),
          SingleChildScrollView(
            child: Column(
              children: [
                HeaderImageCard(),
                TitleCafeProfile(
                  title: 'Rivarno Kopi',
                  rating: 4.8,
                  price: '\$\$',
                ),
                MainContent(),
                ReviewCafeProfile(
                  imageUrl: 'assets/images/magazine/images_barista2.png',
                  title: 'A Review: Ancala Coffee & Bistro',
                  desc:
                      'Description container, where you can spoil about the review',
                ),
              ],
            ),
          ),
          BackButtonWidget(),
        ],
      ),
    );
  }
}
