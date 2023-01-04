import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/widget/event/event_header.dart';
import 'package:hauskafein/ui/widget/event/event_widget.dart';
import 'package:hauskafein/ui/widget/homepage/today_widget.dart';

class Event_Homepage extends StatefulWidget {
  const Event_Homepage({super.key});

  @override
  State<Event_Homepage> createState() => _Event_HomepageState();
}

class _Event_HomepageState extends State<Event_Homepage> {
  final List<Widget> myData = [
    Event_Widget(
      imageUrl: 'assets/images/images_upcomingevent_1.png',
      day: 11,
      month: 'jan',
      title: 'Ngopi Bareng Santuy',
      desc: 'Penting kumpul royom bareng konco',
    ),
    Event_Widget(
      imageUrl: 'assets/images/images_upcomingevent_1.png',
      day: 12,
      month: 'Feb',
      title: 'Ngopi Bareng',
      desc: 'Penting kumpul lan ngopi',
    ),
    Event_Widget(
      imageUrl: 'assets/images/images_upcomingevent_1.png',
      day: 13,
      month: 'Mar',
      title: 'Ngopi Santuy',
      desc: 'Penting santuy lan ngopi',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Event_Header(),
        CarouselSlider(
          options: CarouselOptions(
            initialPage: 0,
            viewportFraction: 0.6,
            height: 140,
            enableInfiniteScroll: false,
            enlargeCenterPage: false,
          ),
          items: myData,
        ),
      ],
    );
  }
}
