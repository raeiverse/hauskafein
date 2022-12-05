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
        CarouselSlider(
          options: CarouselOptions(
            initialPage: 0,
            height: 350,
            enlargeCenterPage: true,
            viewportFraction: 0.6,
            enableInfiniteScroll: false,
          ),
          items: myData,
        ),
      ],
    );
  }
}
