import 'package:flutter/material.dart';
import 'package:hauskafein/ui/pages/GlobalBottomNavBar.dart';
import 'package:hauskafein/ui/widget/homepage/BottomSearchRecNavBar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SearchRecNavBar(),
        GlobalBottomNavBar(),
      ],
    );
  }
}
