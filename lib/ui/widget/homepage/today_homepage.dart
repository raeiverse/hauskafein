import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hauskafein/ui/widget/homepage/today_header.dart';
import 'package:hauskafein/ui/widget/homepage/today_widget.dart';

class Today_Homepage extends StatefulWidget {
  const Today_Homepage({super.key});

  @override
  State<Today_Homepage> createState() => _Today_HomepageState();
}

class _Today_HomepageState extends State<Today_Homepage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> myData = [
    Today_Widget(
      imageUrl: 'assets/images/images_mainprofile_1.png',
      title: 'Ancala Coffe & Bistro',
      desc: 'Warung Ancala Coffe & Bistro',
      rating: 4.4,
    ),
    Today_Widget(
      imageUrl: 'assets/images/images_mainprofile_1.png',
      title: 'Ancala Coffe',
      desc: 'Warung Ancala Coffe',
      rating: 4.3,
    ),
    Today_Widget(
      imageUrl: 'assets/images/images_mainprofile_1.png',
      title: 'Ancala Bistro',
      desc: 'Warung Ancala Bistro',
      rating: 4.2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Today_Header(),
        Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                initialPage: 0,
                height: 350,
                enlargeCenterPage: true,
                viewportFraction: 0.6,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              items: myData,
            ),
            // SLIDER INDICATOR
            // Container(
            //   transform: Matrix4.translationValues(0, 0, 0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: myData.asMap().entries.map((entry) {
            //       return GestureDetector(
            //         onTap: () => _controller.animateToPage(entry.key),
            //         child: Container(
            //           width: 12.0,
            //           height: 12.0,
            //           margin:
            //               EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            //           decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               color: (Theme.of(context).brightness ==
            //                           Brightness.dark
            //                       ? Colors.white
            //                       : Colors.black)
            //                   .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            //         ),
            //       );
            //     }).toList(),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
